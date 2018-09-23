.class final Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$State;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DetectingState"
.end annotation


# static fields
.field private static final MESSAGE_ON_TRIPLE_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mLastDown:Landroid/view/MotionEvent;

.field private mLastUp:Landroid/view/MotionEvent;

.field final mLongTapMinDelay:I

.field final mMultiTapMaxDelay:I

.field final mMultiTapMaxDistance:I

.field private mPreLastDown:Landroid/view/MotionEvent;

.field private mPreLastUp:Landroid/view/MotionEvent;

.field mShortcutTriggered:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mSwipeMinDistance:I

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    :goto_1
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$500(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$500(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v1, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$502(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    :goto_2
    return-void
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$500(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    return-void
.end method

.method private isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0
.end method

.method private onTripleTap(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$700(Lcom/android/server/accessibility/MagnificationGestureHandler;FF)V

    :goto_0
    return-void
.end method

.method private removePendingDelayedMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private sendDelayedMotionEvents()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$500(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    iget-object v3, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    iget v5, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$600(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J
    .locals 4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private timeOf(Landroid/view/MotionEvent;)J
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public afterMultiTapTimeoutTransitionToDelegatingState()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clearDelayedMotionEvents()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    nop

    :goto_0
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isFingerDown()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiTapTriggered(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_a

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->onTripleTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_2
    nop

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_a

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_1

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->afterMultiTapTimeoutTransitionToDelegatingState()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    nop

    :cond_a
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setShortcutTriggered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->setForceShowMagnifiableBounds(Z)V

    return-void
.end method

.method public tapCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectingState{tapCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShortcutTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayedEventQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toggleShortcutTriggered()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    return-void
.end method

.method transitionToDelegatingStateAndClear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->sendDelayedMotionEvents()V

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    return-void
.end method

.method transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$700(Lcom/android/server/accessibility/MagnificationGestureHandler;FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    return-void
.end method
