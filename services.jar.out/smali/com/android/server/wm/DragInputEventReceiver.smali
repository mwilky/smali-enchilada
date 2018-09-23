.class Lcom/android/server/wm/DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DragInputEventReceiver.java"


# instance fields
.field private final mDragDropController:Lcom/android/server/wm/DragDropController;

.field private mIsStartEvent:Z

.field private mMuteInput:Z

.field private mStylusButtonDownAtStart:Z


# direct methods
.method constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    nop

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    iget-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v7, :cond_2

    iput-boolean v5, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    :cond_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :pswitch_0
    :try_start_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    const-string v7, "Drag cancelled!"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v0, :cond_6

    if-nez v5, :cond_6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_4

    const-string v0, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Button no longer pressed; dropping at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_1

    :pswitch_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_5

    const-string v0, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got UP on move channel; dropping at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    nop

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    xor-int/2addr v6, v7

    invoke-virtual {v0, v6, v3, v4}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFF)V

    const/4 v1, 0x1

    goto :goto_3

    :pswitch_3
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_7

    const-string v0, "WindowManager"

    const-string v6, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_8
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "WindowManager"

    const-string v3, "Exception caught by drag handleMotion"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
