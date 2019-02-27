.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v3, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    move-object v1, v3

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :pswitch_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->access$302(Landroid/view/inputmethod/InputMethodManager;I)I

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :pswitch_3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_5
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_4

    move v2, v1

    nop

    :cond_4
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v4, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v2, v4, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    if-nez v0, :cond_5

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v1, v4, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v1

    :cond_5
    :goto_2
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->access$100(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v4, v4, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    invoke-static {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->access$200(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    :goto_3
    move v5, v1

    goto :goto_4

    :cond_6
    const/16 v1, 0x8

    goto :goto_3

    :goto_4
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    :cond_7
    monitor-exit v3

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    :try_start_6
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v2, v2, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-eq v2, v0, :cond_8

    monitor-exit v4

    return-void

    :cond_8
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v1, v2, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    :cond_9
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v1, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_a

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    :cond_a
    return-void

    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/InputBindResult;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    :try_start_8
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v3, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v3, :cond_c

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v3, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v4, v0, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v3, v4, :cond_b

    goto :goto_5

    :cond_b
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3, v2}, Landroid/view/inputmethod/InputMethodManager;->access$002(Landroid/view/inputmethod/InputMethodManager;I)I

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v3, v2, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v3, v2, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v0, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v3, v2, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    return-void

    :cond_c
    :goto_5
    :try_start_9
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring onBind: cur seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v4, v4, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", given seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v2, v3, :cond_d

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    :cond_d
    monitor-exit v1

    return-void

    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v2

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/io/FileDescriptor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/io/PrintWriter;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_5
    move-exception v2

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
