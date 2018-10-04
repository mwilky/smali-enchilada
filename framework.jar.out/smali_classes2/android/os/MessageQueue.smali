.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    return-void
.end method

.method private dispatchEvents(II)I
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$FileDescriptorRecord;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    iget v1, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    and-int/2addr p2, v1

    if-nez p2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iget-object v2, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    iget v3, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v2, v4, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v4, v4, 0x4

    :cond_2
    if-eq v4, v1, :cond_4

    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    iget v6, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v3, :cond_3

    iput v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-nez v4, :cond_3

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_4
    :goto_0
    return v4

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private dispose()V
    .locals 4

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    :cond_0
    return-void
.end method

.method private isPollingLocked()Z
    .locals 2

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    iput-wide p1, v1, Landroid/os/Message;->when:J

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    :goto_0
    if-eqz v3, :cond_0

    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    move-object v2, v3

    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_1
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_4

    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_3

    nop

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/Message;->next:Landroid/os/Message;

    :cond_2
    move-object v2, v3

    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    if-nez v3, :cond_2

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private removeAllMessagesLocked()V
    .locals 2

    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    or-int/lit8 p2, p2, 0x4

    if-nez v2, :cond_2

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    :cond_1
    new-instance v3, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v3, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    move-object v2, v3

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    :goto_0
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    iget-object v4, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, v3}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2

    if-eqz p1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v3, :cond_2

    if-eqz p3, :cond_0

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(Total messages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", polling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", quitting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " sending message to a Handler on a dead thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    monitor-exit p0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    iput-wide p2, p1, Landroid/os/Message;->when:J

    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_5

    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v4

    if-eqz v0, :cond_4

    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    :goto_1
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    :cond_5
    :goto_2
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    :goto_3
    if-eqz v1, :cond_6

    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    :cond_6
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " This message is already in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must have a target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_1
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isIdle()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPolling()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method next()Landroid/os/Message;
    .locals 14

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, -0x1

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_1
    invoke-direct {p0, v0, v1, v2}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v9, :cond_3

    iget-object v10, v9, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v10, :cond_3

    :cond_2
    move-object v8, v9

    iget-object v10, v9, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v9, v10

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/os/Message;->isAsynchronous()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_3
    if-eqz v9, :cond_6

    iget-wide v10, v9, Landroid/os/Message;->when:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_4

    iget-wide v10, v9, Landroid/os/Message;->when:J

    sub-long/2addr v10, v6

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v2, v10

    goto :goto_2

    :cond_4
    iput-boolean v4, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v8, :cond_5

    iget-object v4, v9, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v4, v8, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_5
    iget-object v4, v9, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v4, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_1
    iput-object v3, v9, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->markInUse()V

    monitor-exit p0

    return-object v9

    :cond_6
    const/4 v2, -0x1

    :goto_2
    iget-boolean v10, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v10, :cond_7

    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    monitor-exit p0

    return-object v3

    :cond_7
    if-gez v5, :cond_9

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_8

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v10, v10, Landroid/os/Message;->when:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_9

    :cond_8
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v5, v10

    :cond_9
    if-gtz v5, :cond_a

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    monitor-exit p0

    goto :goto_0

    :cond_a
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v10, :cond_b

    const/4 v10, 0x4

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    :cond_b
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_d

    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v7, v7, v6

    iget-object v8, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aput-object v3, v8, v6

    move v8, v4

    :try_start_1
    invoke-interface {v7}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v9

    goto :goto_4

    :catch_0
    move-exception v9

    const-string v10, "MessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    if-nez v8, :cond_c

    monitor-enter p0

    :try_start_2
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_c
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public postSyncBarrier()I
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method public postSyncBarrierRightBehind()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/Message;->when:J

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method quit(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    :goto_0
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_4

    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_4

    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_4

    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2

    if-eqz p1, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSyncBarrier(I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_0

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, p1, :cond_1

    :cond_0
    move-object v0, v1

    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_6

    if-eqz v0, :cond_2

    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    if-eqz v2, :cond_5

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_5

    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v2, :cond_0

    const-wide v3, 0x20b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Message;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v2, v3

    goto :goto_0

    :cond_0
    const-wide v2, 0x10800000002L

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
