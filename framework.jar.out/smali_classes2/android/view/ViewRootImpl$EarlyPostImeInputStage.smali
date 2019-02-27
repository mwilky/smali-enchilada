.class final Landroid/view/ViewRootImpl$EarlyPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EarlyPostImeInputStage"
.end annotation


# instance fields
.field private mIsGestureScreenshotEnabled:Z

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    return-void
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->handleTooltipKey(Landroid/view/KeyEvent;)V

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$2300(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, v0}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    const/4 v1, 0x0

    return v1
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 9

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xd

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1f4

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "oem_acc_sensor_three_finger"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->mIsGestureScreenshotEnabled:Z

    const-string v2, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gesture Screenshot Enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->mIsGestureScreenshotEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_3

    :cond_2
    iput-boolean v3, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->mIsGestureScreenshotEnabled:Z

    :cond_3
    iget-boolean v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->mIsGestureScreenshotEnabled:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v2, v4, :cond_4

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mIsMultiTouchGame:Z

    if-nez v2, :cond_4

    move-object v2, v0

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v3, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    const-string v3, "ViewRootImpl"

    const-string v4, "Gesture Screenshot triggered, ignore event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    :cond_5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    :cond_6
    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/16 v4, 0x1002

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    :cond_7
    if-nez v1, :cond_8

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$2400(Landroid/view/ViewRootImpl;)Landroid/view/autofill/AutofillManager;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/autofill/AutofillManager;->requestHideFillUi()V

    :cond_8
    if-nez v1, :cond_9

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hideTooltip()V

    :cond_9
    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget v2, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    iput v4, v2, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    :cond_b
    return v3
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
