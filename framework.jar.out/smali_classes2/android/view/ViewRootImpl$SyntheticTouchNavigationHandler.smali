.class final Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTouchNavigationHandler"
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_MILLIMETERS:F = 48.0f

.field private static final DEFAULT_WIDTH_MILLIMETERS:F = 48.0f

.field private static final FLING_TICK_DECAY:F = 0.8f

.field private static final LOCAL_DEBUG:Z = false

.field private static final LOCAL_TAG:Ljava/lang/String; = "SyntheticTouchNavigationHandler"

.field private static final MAX_FLING_VELOCITY_TICKS_PER_SECOND:F = 20.0f

.field private static final MIN_FLING_VELOCITY_TICKS_PER_SECOND:F = 6.0f

.field private static final TICK_DISTANCE_MILLIMETERS:I = 0xc


# instance fields
.field private mAccumulatedX:F

.field private mAccumulatedY:F

.field private mActivePointerId:I

.field private mConfigMaxFlingVelocity:F

.field private mConfigMinFlingVelocity:F

.field private mConfigTickDistance:F

.field private mConsumedMovement:Z

.field private mCurrentDeviceId:I

.field private mCurrentDeviceSupported:Z

.field private mCurrentSource:I

.field private final mFlingRunnable:Ljava/lang/Runnable;

.field private mFlingVelocity:F

.field private mFlinging:Z

.field private mLastX:F

.field private mLastY:F

.field private mPendingKeyCode:I

.field private mPendingKeyDownTime:J

.field private mPendingKeyMetaState:I

.field private mPendingKeyRepeatCount:I

.field private mStartX:F

.field private mStartY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;-><init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$4600(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    return v0
.end method

.method static synthetic access$4700(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    return v0
.end method

.method static synthetic access$4800(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    return-void
.end method

.method static synthetic access$4932(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    return v0
.end method

.method static synthetic access$5000(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5102(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    return p1
.end method

.method static synthetic access$5200(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    :cond_0
    return-void
.end method

.method private consumeAccumulatedMovement(JIFII)F
    .locals 1

    :goto_0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    neg-float v0, v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    invoke-direct {p0, p1, p2, p5, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    add-float/2addr p4, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1

    invoke-direct {p0, p1, p2, p6, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    sub-float/2addr p4, v0

    goto :goto_1

    :cond_1
    return p4
.end method

.method private consumeAccumulatedMovement(JI)V
    .locals 12

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    const/16 v10, 0x15

    const/16 v11, 0x16

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v5 .. v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    iput v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    iput-boolean v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    const/16 v10, 0x13

    const/16 v11, 0x14

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v5 .. v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    iput v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    iput-boolean v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private finishKeys(J)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancelFling()V

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    return-void
.end method

.method private finishTracking(J)V
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private postFling(J)Z
    .locals 5

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    add-long v3, p1, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendKeyDownOrRepeat(JII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eq v2, v1, :cond_0

    invoke-direct/range {p0 .. p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    move-wide/from16 v14, p1

    iput-wide v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    goto :goto_0

    :cond_0
    move-wide/from16 v14, p1

    iget v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    :goto_0
    move/from16 v2, p4

    iput v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget-object v13, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v12, Landroid/view/KeyEvent;

    iget-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    const/4 v8, 0x0

    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    iget v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/16 v16, 0x400

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move-object v3, v12

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide v6, v14

    move-object/from16 v19, v12

    move/from16 v12, v17

    move-object/from16 v20, v13

    move/from16 v13, v16

    move/from16 v14, v18

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private sendKeyUp(J)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    iget-wide v3, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    const/4 v7, 0x1

    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    const/4 v9, 0x0

    iget v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/4 v12, 0x0

    const/16 v13, 0x400

    iget v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move-object v2, v15

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    :cond_0
    return-void
.end method

.method private startFling(JFF)Z
    .locals 3

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput p3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    :cond_0
    return v1

    :pswitch_1
    neg-float v0, p3

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    neg-float v0, p3

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    :cond_1
    return v1

    :pswitch_2
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput p4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    :cond_2
    return v1

    :pswitch_3
    neg-float v0, p4

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    neg-float v0, p4

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    :cond_3
    return v1

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 2

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ne v6, v4, :cond_0

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    if-eq v6, v5, :cond_3

    :cond_0
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    iput v4, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    iput v5, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    iput-boolean v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v10

    invoke-virtual {v6, v7}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v11

    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    iput-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    invoke-virtual {v10}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v12

    cmpg-float v13, v12, v9

    const/high16 v14, 0x42400000    # 48.0f

    if-gtz v13, :cond_1

    invoke-virtual {v10}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v13

    div-float v12, v13, v14

    :cond_1
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v13

    cmpg-float v15, v13, v9

    if-gtz v15, :cond_2

    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v15

    div-float v13, v15, v14

    :cond_2
    add-float v14, v12, v13

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    const/high16 v15, 0x41400000    # 12.0f

    mul-float/2addr v15, v14

    iput v15, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    const/high16 v15, 0x40c00000    # 6.0f

    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    mul-float/2addr v15, v9

    iput v15, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    const/high16 v9, 0x41a00000    # 20.0f

    iget v15, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    mul-float/2addr v9, v15

    iput v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    :cond_3
    iget-boolean v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    if-nez v6, :cond_4

    return-void

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_0

    :pswitch_1
    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    if-gez v8, :cond_5

    goto/16 :goto_0

    :cond_5
    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    if-gez v8, :cond_6

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_0

    :cond_6
    iget-object v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    iget v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    sub-float v12, v9, v12

    add-float/2addr v11, v12

    iput v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    iget v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    sub-float v12, v10, v12

    add-float/2addr v11, v12

    iput v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    iput v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    iput v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-direct {v0, v2, v3, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JI)V

    if-ne v6, v7, :cond_8

    iget-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    if-eqz v7, :cond_7

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eqz v7, :cond_7

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    iget v13, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    invoke-virtual {v7, v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    invoke-virtual {v7, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v13, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v12

    invoke-direct {v0, v2, v3, v7, v12}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->startFling(JFF)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    :cond_7
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto :goto_0

    :pswitch_2
    iget-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    const/4 v8, 0x0

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    iput-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    nop

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
