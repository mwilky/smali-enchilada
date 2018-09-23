.class final Lcom/android/server/accessibility/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickScheduler"
.end annotation


# static fields
.field private static final MOVEMENT_SLOPE:D = 20.0


# instance fields
.field private mActive:Z

.field private mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mDelay:I

.field private mEventPolicyFlags:I

.field private mHandler:Landroid/os/Handler;

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mMetaState:I

.field private mScheduledClickTime:J

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final synthetic this$0:Lcom/android/server/accessibility/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    iput p3, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method private cacheLastEvent(Landroid/view/MotionEvent;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iput p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :cond_1
    return-void
.end method

.method private detectMovement(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v4, v2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private rescheduleClick(I)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetInternalState()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-void
.end method

.method private sendClick()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AutoclickController;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    new-array v2, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v2, v4

    :cond_1
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v4

    invoke-virtual {v2, v1, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v2, :cond_2

    new-array v2, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v2, v4

    :cond_2
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v5, v4

    invoke-virtual {v2, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v11, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v12, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v13, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    move-wide/from16 v5, v21

    move-wide/from16 v7, v21

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    iget v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v3, v2, v2, v5}, Lcom/android/server/accessibility/AutoclickController;->access$001(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iget-object v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    iget v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v3, v4, v4, v5}, Lcom/android/server/accessibility/AutoclickController;->access$101(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->sendClick()V

    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClickScheduler: { active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledClickTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", anchor={x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metastate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastMotionEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->detectMovement(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cacheLastEvent(Landroid/view/MotionEvent;IZ)V

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->rescheduleClick(I)V

    :cond_2
    return-void
.end method

.method public updateDelay(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    return-void
.end method

.method public updateMetaState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    return-void
.end method
