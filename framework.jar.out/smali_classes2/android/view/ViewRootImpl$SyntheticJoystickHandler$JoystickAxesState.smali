.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JoystickAxesState"
.end annotation


# static fields
.field private static final STATE_DOWN_OR_RIGHT:I = 0x1

.field private static final STATE_NEUTRAL:I = 0x0

.field private static final STATE_UP_OR_LEFT:I = -0x1


# instance fields
.field final mAxisStatesHat:[I

.field final mAxisStatesStick:[I

.field final synthetic this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V
    .locals 2

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private isXAxis(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isYAxis(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private joystickAxisAndStateToKeycode(II)I
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    const/16 v0, 0x15

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_1

    const/16 v0, 0x16

    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, v1, :cond_2

    const/16 v0, 0x13

    return v0

    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v2, :cond_3

    const/16 v0, 0x14

    return v0

    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$2000(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown axis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private joystickAxisValueToState(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method resetState()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v1, v0, v1

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v1, v0, v2

    return-void
.end method

.method updateStateForAxis(Landroid/view/MotionEvent;JIF)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    goto :goto_1

    :cond_0
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    const/4 v3, 0x2

    goto :goto_0

    :goto_1
    nop

    move/from16 v4, p5

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisValueToState(F)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aget v7, v7, v2

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aget v7, v7, v2

    :goto_3
    nop

    if-ne v7, v5, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v22

    const/4 v14, -0x1

    if-eq v7, v6, :cond_4

    if-ne v7, v14, :cond_6

    :cond_4
    invoke-direct {v0, v1, v7}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v23

    if-eqz v23, :cond_5

    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v13, v8, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x400

    move-object v8, v11

    move-wide/from16 v9, p2

    move-object v6, v11

    move-wide/from16 v11, p2

    move-object/from16 v24, v13

    move/from16 v13, v16

    move/from16 v14, v23

    move/from16 v25, v15

    move/from16 v15, v17

    move/from16 v16, v21

    move/from16 v17, v25

    move/from16 v20, v22

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v8, v24

    invoke-virtual {v8, v6}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->access$4500(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;

    move-result-object v6

    const/4 v8, 0x0

    move/from16 v15, v25

    invoke-virtual {v6, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v6, v3}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    :cond_6
    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    goto :goto_4

    :cond_7
    move v8, v15

    goto/16 :goto_5

    :cond_8
    :goto_4
    invoke-direct {v0, v1, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v6

    if-eqz v6, :cond_9

    new-instance v23, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x400

    move-object/from16 v8, v23

    move-wide/from16 v9, p2

    move-wide/from16 v11, p2

    move v14, v6

    move/from16 v26, v15

    move/from16 v15, v16

    move/from16 v16, v21

    move/from16 v17, v26

    move/from16 v20, v22

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v15, v23

    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v8, v8, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v8, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v8, v3, v15}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    const/4 v8, 0x1

    invoke-virtual {v14, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v14, v9, v10}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v8}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->access$4500(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;

    move-result-object v13

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x420

    move-object v8, v11

    move-wide/from16 v9, p2

    move-object/from16 v27, v11

    move-wide/from16 v11, p2

    move-object/from16 v28, v13

    move/from16 v13, v16

    move-object/from16 v23, v14

    move v14, v6

    move-object/from16 v24, v15

    move/from16 v15, v17

    move/from16 v16, v21

    move/from16 v17, v26

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move/from16 v8, v26

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_9
    move v8, v15

    :goto_5
    if-eqz v1, :cond_b

    const/4 v6, 0x1

    if-ne v1, v6, :cond_a

    goto :goto_6

    :cond_a
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aput v5, v6, v2

    goto :goto_7

    :cond_b
    :goto_6
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v5, v6, v2

    :goto_7
    return-void

    :cond_c
    move/from16 v4, p5

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v2, v2, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$2000(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected axis "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in updateStateForAxis!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
