.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final ARGS_POOL_SIZE:I = 0x32

.field private static final DEBUG:Z

.field private static final FUSE_FSYNC:I = 0x14

.field private static final FUSE_GETATTR:I = 0x3

.field private static final FUSE_LOOKUP:I = 0x1

.field private static final FUSE_MAX_WRITE:I = 0x20000

.field private static final FUSE_OK:I = 0x0

.field private static final FUSE_OPEN:I = 0xe

.field private static final FUSE_READ:I = 0xf

.field private static final FUSE_RELEASE:I = 0x12

.field private static final FUSE_WRITE:I = 0x10

.field private static final MIN_INODE:I = 0x2

.field public static final ROOT_INODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mArgsPool:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCallbackMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMountPointId:I

.field private mNextInode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FuseAppLoop"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop$1;)V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    if-nez p3, :cond_0

    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    new-instance v0, Lcom/android/internal/os/-$$Lambda$FuseAppLoop$e9Yru2f_btesWlxIgerkPnHibpg;

    invoke-direct {v0, p0}, Lcom/android/internal/os/-$$Lambda$FuseAppLoop$e9Yru2f_btesWlxIgerkPnHibpg;-><init>(Lcom/android/internal/os/FuseAppLoop;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static checkInode(J)I
    .locals 7

    const-string v6, "checkInode"

    const-wide/16 v2, 0x2

    const-wide/32 v4, 0x7fffffff

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    long-to-int v0, p0

    return v0
.end method

.method private getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->ENOENT:I

    const-string v3, "getCallbackEntryOrThrowLocked"

    invoke-direct {v1, v3, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static getError(Ljava/lang/Exception;)I
    .locals 2

    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v0, v1, :cond_0

    neg-int v1, v0

    return v1

    :cond_0
    sget v0, Landroid/system/OsConstants;->EBADF:I

    neg-int v0, v0

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/internal/os/FuseAppLoop;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCommand(IJJJI[B)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop$1;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;

    :goto_0
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    iput p8, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    iput-object p9, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v2, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onCommand"

    sget v4, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onOpen(JJ)[B
    .locals 10

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onOpen"

    sget v4, Landroid/system/OsConstants;->EMFILE:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private replySimpleLocked(JI)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMountPointId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 25

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/FuseAppLoop$Args;

    iget-object v13, v12, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-wide v14, v12, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iget-wide v8, v12, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iget v7, v12, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    iget-wide v4, v12, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    iget-object v0, v12, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    move-object v2, v0

    const/4 v3, 0x1

    :try_start_0
    iget v0, v11, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    const-wide/16 v16, 0x0

    if-eq v0, v3, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown FUSE command: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v11, Landroid/os/Message;->what:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v23, v8

    move-wide/from16 v21, v14

    move-wide v14, v4

    goto/16 :goto_b

    :pswitch_0
    :try_start_2
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v4, v5, v7, v2}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    move-result v6

    iget-object v1, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-wide/from16 v18, v4

    :try_start_3
    iget-wide v3, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v3, v16

    if-eqz v0, :cond_0

    iget-wide v3, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v1

    move-object v1, v10

    move-object v5, v2

    const/16 v20, 0x1

    move-wide v2, v3

    move-object v11, v5

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    move-wide v4, v8

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v1

    move-object v11, v2

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    const/16 v20, 0x1

    :goto_0
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    nop

    move/from16 v18, v7

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v16, v1

    move-object v11, v2

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    const/16 v20, 0x1

    :goto_1
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    move/from16 v18, v7

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v11, v2

    move/from16 v20, v3

    move-wide/from16 v21, v14

    move-wide v14, v4

    move/from16 v18, v7

    move-wide/from16 v23, v8

    goto/16 :goto_b

    :pswitch_1
    move-object v11, v2

    move/from16 v20, v3

    move-wide/from16 v21, v14

    move-wide v14, v4

    :try_start_6
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v14, v15, v7, v11}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    move-result v6

    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_1

    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v1, v10

    move-object/from16 v16, v4

    move-wide v4, v8

    move/from16 v18, v7

    move-object v7, v11

    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V

    goto :goto_2

    :cond_1
    move-object/from16 v16, v4

    move/from16 v18, v7

    :goto_2
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    nop

    :goto_3
    move-wide/from16 v23, v8

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v7

    :goto_4
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move/from16 v18, v7

    move-wide/from16 v23, v8

    goto/16 :goto_b

    :cond_2
    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-wide v14, v4

    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    iget-object v7, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :try_start_a
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_3

    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const/4 v6, 0x0

    move-object v1, v10

    move-wide v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_3
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v7

    goto :goto_3

    :catchall_4
    move-exception v0

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v0

    :cond_4
    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-wide v14, v4

    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    iget-object v7, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :try_start_c
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_5

    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const/4 v6, 0x0

    move-object v1, v10

    move-wide v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_5
    iget-object v0, v10, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v13}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v7

    goto :goto_3

    :catchall_5
    move-exception v0

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    move-exception v0

    :goto_5
    move-wide/from16 v23, v8

    goto/16 :goto_b

    :cond_6
    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-wide v14, v4

    :try_start_e
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    move-wide v6, v8

    move-wide v8, v0

    :try_start_f
    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    :try_start_10
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_7

    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-object v1, v10

    move-object/from16 v16, v4

    move-wide v4, v6

    move-wide/from16 v23, v6

    move-wide/from16 v6, v21

    :try_start_11
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V

    goto :goto_6

    :cond_7
    move-object/from16 v16, v4

    move-wide/from16 v23, v6

    :goto_6
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v16, v4

    move-wide/from16 v23, v6

    :goto_7
    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    throw v0

    :catchall_7
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-wide/from16 v23, v6

    goto :goto_b

    :catch_6
    move-exception v0

    move-wide/from16 v23, v8

    goto :goto_b

    :cond_8
    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v23, v8

    move-wide/from16 v21, v14

    move-wide v14, v4

    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v8

    iget-object v6, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    :try_start_13
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_9

    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move-object v1, v10

    move-wide/from16 v4, v23

    move-object/from16 v16, v6

    move-wide/from16 v6, v21

    :try_start_14
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    goto :goto_8

    :cond_9
    move-object/from16 v16, v6

    :goto_8
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    nop

    :goto_9
    nop

    move-wide/from16 v3, v23

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object/from16 v16, v6

    :goto_a
    monitor-exit v16
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    :catchall_9
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v23, v8

    move-wide/from16 v21, v14

    move-wide v14, v4

    :goto_b
    move-object v1, v0

    iget-object v2, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_16
    const-string v0, "FuseAppLoop"

    const-string v3, ""

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    move-wide/from16 v3, v23

    :try_start_17
    invoke-direct {v10, v3, v4, v0}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v2

    :goto_c
    return v20

    :catchall_a
    move-exception v0

    move-wide/from16 v3, v23

    :goto_d
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method native native_delete(J)V
.end method

.method native native_new(I)J
.end method

.method native native_replyGetAttr(JJJJ)V
.end method

.method native native_replyLookup(JJJJ)V
.end method

.method native native_replyOpen(JJJ)V
.end method

.method native native_replyRead(JJI[B)V
.end method

.method native native_replySimple(JJI)V
.end method

.method native native_replyWrite(JJI)V
.end method

.method native native_start(J)V
.end method

.method public registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const v2, 0x7ffffffd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v2, "Too many opened files."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    move v3, v4

    nop

    :cond_1
    const-string v1, "Handler must be different from the current thread"

    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    :cond_2
    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    if-gez v2, :cond_3

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    nop

    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, p1, v4}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return v1

    :cond_4
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterCallback(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
