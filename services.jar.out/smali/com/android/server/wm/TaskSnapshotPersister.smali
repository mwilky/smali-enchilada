.class Lcom/android/server/wm/TaskSnapshotPersister;
.super Ljava/lang/Object;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    }
.end annotation


# static fields
.field private static final BITMAP_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final DELAY_MS:J = 0x64L

.field static final DISABLE_FULL_SIZED_BITMAPS:Z

.field private static final MAX_STORE_QUEUE_DEPTH:I = 0x2

.field private static final PROTO_EXTENSION:Ljava/lang/String; = ".proto"

.field private static final QUALITY:I = 0x5f

.field private static final REDUCED_POSTFIX:Ljava/lang/String; = "_reduced"

.field static final REDUCED_SCALE:F

.field private static final SNAPSHOTS_DIRNAME:Ljava/lang/String; = "snapshots"

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

.field private final mLock:Ljava/lang/Object;

.field private mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPersister:Ljava/lang/Thread;

.field private mQueueIdling:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mStarted:Z

.field private final mStoreQueueItems:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    sput v0, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister$1;

    const-string v1, "TaskSnapshotPersister"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister$1;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskSnapshotPersister;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->createDirectory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/TaskSnapshotPersister;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->deleteSnapshot(II)V

    return-void
.end method

.method private createDirectory(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private deleteSnapshot(II)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    sget-boolean v2, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private ensureStoreQueueDepthLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue is too deep! Purged item with taskid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->access$000(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDirectory(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "snapshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onQueuedLocked()V

    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotPersister;->ensureStoreQueueDepthLocked()V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method


# virtual methods
.method getBitmapFile(II)Ljava/io/File;
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "This device does not support full sized resolution bitmaps."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProtoFile(II)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".proto"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getReducedResolutionBitmapFile(II)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_reduced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method onTaskRemovedFromRecents(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/app/ActivityManager$TaskSnapshot;)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeObsoleteFiles(Landroid/util/ArraySet;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[I)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPaused(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method start()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method waitForQueueEmpty()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
