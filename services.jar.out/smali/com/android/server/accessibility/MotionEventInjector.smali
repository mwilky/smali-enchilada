.class public Lcom/android/server/accessibility/MotionEventInjector;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MotionEventInjector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final EVENT_BUTTON_STATE:I = 0x0

.field private static final EVENT_DEVICE_ID:I = 0x0

.field private static final EVENT_EDGE_FLAGS:I = 0x0

.field private static final EVENT_FLAGS:I = 0x0

.field private static final EVENT_META_STATE:I = 0x0

.field private static final EVENT_SOURCE:I = 0x1002

.field private static final EVENT_X_PRECISION:F = 1.0f

.field private static final EVENT_Y_PRECISION:F = 1.0f

.field private static final LOG_TAG:Ljava/lang/String; = "MotionEventInjector"

.field private static final MESSAGE_INJECT_EVENTS:I = 0x2

.field private static final MESSAGE_SEND_MOTION_EVENT:I = 0x1

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mDownTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mLastScheduledEventTime:J

.field private mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private mNumLastTouchPoints:I

.field private final mOpenGesturesInProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSequencesInProgress:Landroid/util/IntArray;

.field private mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mStrokeIdToPointerId:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    const/4 v10, 0x0

    move v0, v10

    :goto_0
    move v11, v0

    move/from16 v12, p3

    if-ge v11, v12, :cond_3

    aget-object v0, p2, v11

    iget-boolean v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v0, :cond_2

    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v0, v9, v0

    aget-object v1, p2, v11

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v10

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    :goto_1
    if-nez v0, :cond_1

    move-wide/from16 v13, p4

    iput-wide v13, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    goto :goto_2

    :cond_1
    move-wide/from16 v13, p4

    :goto_2
    shl-int/lit8 v1, v11, 0x8

    or-int v15, v0, v1

    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, v8

    move-wide v3, v13

    move v5, v15

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move-object/from16 v1, p1

    move-wide/from16 v13, p4

    :goto_3
    add-int/lit8 v0, v11, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v1, p1

    move-wide/from16 v13, p4

    return-void
.end method

.method private appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    move-object v8, p0

    const/4 v0, 0x0

    invoke-direct {v8}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    const/4 v1, 0x0

    move v10, v0

    move v0, v1

    :goto_0
    move v11, p3

    if-ge v0, v11, :cond_3

    iget v2, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v3, p2, v0

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v9, v2, v3}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v2

    if-ltz v2, :cond_2

    aget-object v3, v9, v2

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    aget-object v4, p2, v0

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    aget-object v3, v9, v2

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    aget-object v4, p2, v0

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    or-int/2addr v3, v10

    aget-object v4, v9, v2

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    move v10, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v10, :cond_4

    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    const/4 v5, 0x2

    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, v8

    move-wide/from16 v3, p4

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object v1, p1

    :goto_3
    return-void
.end method

.method private appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    move-object v8, p0

    invoke-direct {v8}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    const/4 v0, 0x0

    :goto_0
    move v10, v0

    move/from16 v11, p3

    if-ge v10, v11, :cond_5

    aget-object v0, p2, v10

    iget-boolean v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v0, :cond_3

    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v1, p2, v10

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v9, v0, v1}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v12

    if-gez v12, :cond_0

    goto :goto_3

    :cond_0
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_1

    move v0, v13

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    :goto_1
    shl-int/lit8 v1, v12, 0x8

    or-int v14, v0, v1

    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, v8

    move-wide/from16 v3, p4

    move v5, v14

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v12

    :goto_2
    iget v2, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    sub-int/2addr v2, v13

    if-ge v0, v2, :cond_2

    aget-object v2, v9, v0

    iget-object v3, v8, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    sub-int/2addr v0, v13

    iput v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v0, :cond_4

    iget-object v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v1, p1

    :cond_4
    :goto_4
    add-int/lit8 v0, v10, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v1, p1

    return-void
.end method

.method private cancelAnyGestureInProgress(I)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v7, 0x3

    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v8

    const/4 v9, 0x1

    move-object v2, p0

    move-wide v3, v10

    move-wide v5, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v0, v2}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private cancelAnyPendingInjectedEvents()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x1002

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    :cond_1
    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private static findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/accessibilityservice/GestureDescription;->getMaxStrokeCount()I

    move-result v0

    new-array v1, v0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v0
.end method

.method private getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;J)",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    const/4 v8, 0x0

    move v1, v8

    :goto_0
    move v9, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/accessibilityservice/GestureDescription$GestureStep;

    iget v11, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    array-length v1, v7

    if-le v11, v1, :cond_0

    iput v8, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v0

    :cond_0
    iget-object v3, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v1, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v5, p2, v1

    move-object v1, p0

    move-object v2, v0

    move v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MotionEventInjector;->appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    iget-object v3, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v1, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v5, p2, v1

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MotionEventInjector;->appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    iget-object v3, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v1, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v5, p2, v1

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MotionEventInjector;->appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    add-int/lit8 v1, v9, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUnusedPointerId()I
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method private injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v0, v1, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    const-string v4, "MotionEventInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error sending status with mIsDestroyed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    return-void

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/MotionEventInjector;->newGestureTriesToContinueOldOne(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v5, v1, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-ne v2, v5, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/MotionEventInjector;->prepareToContinueOldGesture(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    const/16 v5, 0x1002

    invoke-direct {v1, v5}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    :cond_4
    iput-object v2, v1, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    nop

    iget-object v7, v1, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    move-result v7

    if-nez v7, :cond_5

    move-wide v7, v5

    goto :goto_1

    :cond_5
    iget-wide v7, v1, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    :goto_1
    move-object/from16 v9, p1

    invoke-direct {v1, v9, v7, v8}, Lcom/android/server/accessibility/MotionEventInjector;->getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    return-void

    :cond_6
    iget-object v8, v1, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v8, v3}, Landroid/util/IntArray;->add(I)V

    move v8, v4

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/MotionEvent;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v8, v11, :cond_7

    move v11, v12

    goto :goto_3

    :cond_7
    move v11, v4

    :goto_3
    iget-object v13, v1, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v12, v11, v4, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    iget-object v13, v1, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    move/from16 v18, v0

    sub-long v0, v16, v5

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v13, v12, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    goto :goto_2

    :cond_8
    move/from16 v18, v0

    return-void
.end method

.method private newGestureTriesToContinueOldOne(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/GestureDescription$GestureStep;

    move v2, v1

    :goto_0
    iget v3, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V
    .locals 4

    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MotionEventInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending motion event injection status to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v14, p7

    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, v14, :cond_1

    :cond_0
    new-array v1, v14, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move v1, v2

    :goto_0
    if-ge v1, v14, :cond_1

    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v1

    if-ge v1, v14, :cond_3

    :cond_2
    new-array v1, v14, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    move v1, v2

    :goto_1
    if-ge v1, v14, :cond_3

    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_2
    if-ge v1, v14, :cond_5

    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v4, p6, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v5, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getUnusedPointerId()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v5, p6, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v1

    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v1

    iput v2, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    aget-object v5, p6, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    aget-object v5, p6, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v8, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move v6, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1
.end method

.method private prepareToContinueOldGesture(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/GestureDescription$GestureStep;

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    iget v4, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v2, v4, :cond_6

    iget-object v4, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v4, v4, v2

    iget-boolean v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v6, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ne v5, v7, :cond_1

    const-string v6, "MotionEventInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t continue gesture due to unknown continued stroke id in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v7, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v8, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v6

    if-gez v6, :cond_2

    const-string v7, "MotionEventInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t continue gesture due continued gesture id of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " not matching any previous strokes in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v6

    iget-boolean v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v6

    iget v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iget v8, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v6

    iget v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iget v8, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v6

    iget v8, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v8, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    goto :goto_2

    :cond_4
    :goto_1
    const-string v7, "MotionEventInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t continue gesture due to points mismatch between "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    move v2, v1

    :goto_3
    iget v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-ge v2, v4, :cond_8

    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    if-nez v3, :cond_9

    const/4 v1, 0x1

    nop

    :cond_9
    return v1

    :cond_a
    :goto_4
    return v1
.end method

.method private sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 1

    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return v1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const-string v0, "MotionEventInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v5, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v5, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->remove(I)V

    :cond_3
    return v1
.end method

.method public injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public bridge synthetic setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void
.end method
