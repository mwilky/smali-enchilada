.class public abstract Landroid/view/InputEventReceiver;
.super Ljava/lang/Object;
.source "InputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventReceiver$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventReceiver"


# instance fields
.field mChoreographer:Landroid/view/Choreographer;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:J

.field private final mSeqMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 45
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    .line 62
    if-eqz p1, :cond_1

    .line 65
    if-eqz p2, :cond_0

    .line 69
    iput-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 70
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v0, p1, v1}, Landroid/view/InputEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    .line 74
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 75
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchBatchedInputEventPending()V
    .locals 0

    .line 193
    invoke-virtual {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    .line 194
    return-void
.end method

.method private dispatchInputEvent(ILandroid/view/InputEvent;I)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "displayId"    # I

    .line 186
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    invoke-virtual {p0, p2, p3}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 188
    return-void
.end method

.method private dispatchMotionEventInfo(II)V
    .locals 3
    .param p1, "motionEventType"    # I
    .param p2, "touchMoveNum"    # I

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 203
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1, p2}, Landroid/view/Choreographer;->setMotionEventInfo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_1
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InputEventReceiver"

    const-string v2, "cannot invoke setMotionEventInfo."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    .line 94
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 101
    :cond_1
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 102
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/InputEventReceiver;->nativeDispose(J)V

    .line 103
    iput-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    .line 105
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 106
    iput-object v0, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 107
    return-void
.end method

.method private static native nativeConsumeBatchedInputEvents(JJ)Z
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFinishInputEvent(JIZ)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputEventReceiver;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method


# virtual methods
.method public final consumeBatchedInputEvents(J)Z
    .locals 4
    .param p1, "frameTimeNanos"    # J

    .line 174
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 175
    const-string v0, "InputEventReceiver"

    const-string v1, "Attempted to consume batched input events but the input event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    return v0

    .line 178
    :cond_0
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventReceiver;->nativeConsumeBatchedInputEvents(JJ)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V

    .line 91
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final finishInputEvent(Landroid/view/InputEvent;Z)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "handled"    # Z

    .line 142
    if-eqz p1, :cond_2

    .line 145
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 146
    const-string v0, "InputEventReceiver"

    const-string v1, "Attempted to finish an input event but the input event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 150
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 151
    const-string v1, "InputEventReceiver"

    const-string v2, "Attempted to finish an input event that is not in progress."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 154
    .local v1, "seq":I
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 155
    iget-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v2, v3, v1, p2}, Landroid/view/InputEventReceiver;->nativeFinishInputEvent(JIZ)V

    .line 158
    .end local v0    # "index":I
    .end local v1    # "seq":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 159
    return-void

    .line 143
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBatchedInputEventPending()V
    .locals 2

    .line 131
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 132
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 120
    return-void
.end method
