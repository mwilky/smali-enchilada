.class public abstract Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_CLOSE_CONNECTION:I = 0x96

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CONTENT:I = 0xa0

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_DELETE_SURROUNDING_TEXT_IN_CODE_POINTS:I = 0x51

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO:I = 0x8c

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field private static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mFinished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    iput-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2

    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public closeConnection()V
    .locals 1

    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V
    .locals 7

    const/16 v1, 0xa0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1

    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingTextInCodePoints(II)V
    .locals 1

    const/16 v0, 0x51

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "IInputConnectionWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputContextCallback;

    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/view/inputmethod/InputContentInfo;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v5, v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v1

    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    goto :goto_2

    :cond_2
    :goto_0
    const-string v7, "IInputConnectionWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "commitContent with invalid inputContentInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    const-string v6, "IInputConnectionWrapper"

    const-string v7, "commitContent on inactive InputConnection"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling commitContent"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iput-object v2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_5
    :try_start_5
    invoke-static {v1}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_6

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_6
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iput-object v2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    monitor-exit v1

    nop

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    iput-object v2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_9
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v1

    invoke-interface {v2, v1, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    goto :goto_5

    :cond_8
    :goto_4
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "requestCursorAnchorInfo on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v1, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_5
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    :try_start_a
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling requestCursorAnchorInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    return-void

    :cond_a
    :goto_7
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_b
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_8

    :cond_b
    invoke-interface {v3, v1, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :cond_c
    :goto_8
    :try_start_c
    const-string v4, "IInputConnectionWrapper"

    const-string v5, "performPrivateCommand on inactive InputConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_6
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :cond_e
    :goto_9
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "endBatchEdit on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    :cond_f
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    return-void

    :cond_10
    :goto_a
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "beginBatchEdit on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_b

    :cond_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    return-void

    :cond_12
    :goto_b
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "sendKeyEvent on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v1, "IInputConnectionWrapper"

    const-string v2, "finishComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    return-void

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_c

    :cond_15
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    return-void

    :cond_16
    :goto_c
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "setComposingRegion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_d

    :cond_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    return-void

    :cond_18
    :goto_d
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_e

    :cond_19
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    goto :goto_f

    :cond_1a
    :goto_e
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getExtractedText on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_7
    move-exception v1

    goto :goto_10

    :catch_2
    move-exception v1

    :try_start_e
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setExtractedText"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_f
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_11

    :cond_1b
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    invoke-interface {v2, v1, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V

    goto :goto_12

    :cond_1c
    :goto_11
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v1, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_8
    move-exception v1

    goto :goto_13

    :catch_3
    move-exception v1

    :try_start_10
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :goto_12
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :goto_13
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_11
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_14

    :cond_1d
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V

    goto :goto_15

    :cond_1e
    :goto_14
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getSelectedText on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_9
    move-exception v1

    goto :goto_16

    :catch_4
    move-exception v1

    :try_start_12
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setSelectedText"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :goto_15
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :goto_16
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_13
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_17

    :cond_1f
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v2, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    goto :goto_18

    :cond_20
    :goto_17
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_a
    move-exception v1

    goto :goto_19

    :catch_5
    move-exception v1

    :try_start_14
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :goto_18
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :goto_19
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_15
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_1a

    :cond_21
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v2, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    goto :goto_1b

    :cond_22
    :goto_1a
    const-string v5, "IInputConnectionWrapper"

    const-string v6, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_b
    move-exception v1

    goto :goto_1c

    :catch_6
    move-exception v1

    :try_start_16
    const-string v2, "IInputConnectionWrapper"

    const-string v3, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :goto_1b
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :goto_1c
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_1d

    :cond_23
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    return-void

    :cond_24
    :goto_1d
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_1e

    :cond_25
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    return-void

    :cond_26
    :goto_1e
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_1f

    :cond_27
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    return-void

    :cond_28
    :goto_1f
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "setComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_20

    :cond_29
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    return-void

    :cond_2a
    :goto_20
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "performContextMenuAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_21

    :cond_2b
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    return-void

    :cond_2c
    :goto_21
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "performEditorAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_22

    :cond_2d
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    return-void

    :cond_2e
    :goto_22
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "setSelection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_23

    :cond_2f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    return-void

    :cond_30
    :goto_23
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "commitCorrection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_24

    :cond_31
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    return-void

    :cond_32
    :goto_24
    const-string v1, "IInputConnectionWrapper"

    const-string v2, "commitCompletion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_f
        0x14 -> :sswitch_e
        0x19 -> :sswitch_d
        0x1e -> :sswitch_c
        0x28 -> :sswitch_b
        0x32 -> :sswitch_a
        0x3f -> :sswitch_9
        0x41 -> :sswitch_8
        0x46 -> :sswitch_7
        0x5a -> :sswitch_6
        0x5f -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x8c -> :sswitch_2
        0x96 -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6

    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected abstract isActive()Z
.end method

.method protected isFinished()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method protected abstract onUserAction()V
.end method

.method public performContextMenuAction(I)V
    .locals 2

    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performEditorAction(I)V
    .locals 2

    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1

    const/16 v0, 0x8c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1

    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
