.class Lcom/android/server/accessibility/MagnificationGestureHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z = false

.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_EVENT_STREAM:Z = false

.field private static final DEBUG_PANNING_SCALING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationGestureHandler"

.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 2.0f


# instance fields
.field mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mDebugInputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDebugOutputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mDetectShortcutTrigger:Z

.field final mDetectTripleTap:Z

.field final mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mMagnificationController:Lcom/android/server/accessibility/MagnificationController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    iput-boolean p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    iput-boolean p4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->register()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    :goto_0
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOff()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/MagnificationGestureHandler;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOn(FF)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    invoke-static {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    iget-object v3, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v3

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    invoke-direct {v0, v15}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v21

    invoke-direct {v0, v15}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v22

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v15, :cond_0

    aget-object v6, v21, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v6, v21, v5

    aget-object v7, v21, v5

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v7, v3

    div-float/2addr v7, v2

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v6, v21, v5

    aget-object v7, v21, v5

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v7, v4

    div-float/2addr v7, v2

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v6, v22, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    move v10, v15

    move-object/from16 v11, v22

    move-object/from16 v12, v21

    move/from16 v24, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v23

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    :cond_1
    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-super {v0, v1, v2, v3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v1
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v1
.end method

.method private handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->access$000(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->access$100(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private static recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    return-void
.end method

.method private zoomOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    return-void
.end method

.method private zoomOn(FF)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v4, v0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z

    return-void
.end method


# virtual methods
.method clearAndTransitionToStateDetecting()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->clear()V

    return-void
.end method

.method public clearEvents(I)V
    .locals 1

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method notifyShortcutTriggered()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->toggleShortcutTriggered()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->unregister()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationGesture{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportDraggingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectTripleTap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectShortcutTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
