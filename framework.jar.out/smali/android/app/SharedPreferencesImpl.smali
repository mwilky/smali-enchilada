.class final Landroid/app/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedPreferencesImpl$EditorImpl;,
        Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    }
.end annotation


# static fields
.field private static final CONTENT:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field private static final MAX_FSYNC_DURATION_MILLIS:J = 0x100L

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesImpl"


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private mCurrentMemoryStateGeneration:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDiskStateGeneration:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation
.end field

.field private mDiskWritesInFlight:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private mNumSync:I

.field private mStatSize:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mStatTimestamp:Landroid/system/StructTimespec;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation
.end field

.field private mThrowable:Ljava/lang/Throwable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    new-instance v1, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/SharedPreferencesImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->loadFromDisk()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/SharedPreferencesImpl;)I
    .locals 1

    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$308(Landroid/app/SharedPreferencesImpl;)I
    .locals 2

    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$310(Landroid/app/SharedPreferencesImpl;)I
    .locals 2

    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/SharedPreferencesImpl;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-wide v0
.end method

.method static synthetic access$608(Landroid/app/SharedPreferencesImpl;)J
    .locals 4

    iget-wide v0, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V

    return-void
.end method

.method private awaitLoadedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SharedPreferencesImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    nop

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1f9

    const/4 v5, -0x1

    invoke-static {v0, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "SharedPreferencesImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method private enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-instance v3, Landroid/app/SharedPreferencesImpl$2;

    invoke-direct {v3, p0, p1, v2, p2}, Landroid/app/SharedPreferencesImpl$2;-><init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;ZLjava/lang/Runnable;)V

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v6, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne v6, v1, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    move v4, v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    if-nez v2, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-static {v3, v0}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private hasFileChangedUnexpectedly()Z
    .locals 8

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    nop

    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, v1, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    invoke-virtual {v4, v5}, Landroid/system/StructTimespec;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    iget-wide v6, v1, Landroid/system/StructStat;->st_size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    nop

    :cond_2
    :goto_0
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    return v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private loadFromDisk()V
    .locals 8

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SharedPreferencesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to read preferences file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_1
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    move-object v1, v4

    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_3

    nop

    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x4000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v2, v4

    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    :try_start_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_4
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v2

    move-object v3, v2

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_3
    :goto_2
    nop

    :goto_3
    move-object v2, v1

    move-object v1, v0

    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    iput-object v3, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    :try_start_7
    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    iget-object v0, v2, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    iget-wide v5, v2, Landroid/system/StructStat;->st_size:J

    iput-wide v5, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :goto_4
    nop

    :try_start_8
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    goto :goto_7

    :goto_5
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    throw v0

    :cond_5
    :goto_6
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    nop

    monitor-exit v4

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1
.end method

.method static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private startLoadFromDisk()V
    .locals 2

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/app/SharedPreferencesImpl$1;

    const-string v1, "SharedPreferencesImpl-load"

    invoke-direct {v0, p0, v1}, Landroid/app/SharedPreferencesImpl$1;-><init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/SharedPreferencesImpl$1;->start()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .locals 30
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v21

    move-wide/from16 v22, v3

    if-eqz v21, :cond_5

    const/16 v24, 0x0

    iget-wide v3, v1, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    move-wide/from16 v25, v5

    iget-wide v5, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    if-eqz p2, :cond_0

    const/16 v24, 0x1

    move-wide/from16 v27, v7

    goto :goto_1

    :cond_0
    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-wide v5, v1, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v27, v7

    :try_start_1
    iget-wide v7, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move/from16 v24, v0

    :cond_1
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v27, v7

    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move-wide/from16 v27, v7

    :goto_1
    if-nez v24, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    return-void

    :cond_3
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v5, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SharedPreferencesImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t rename file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to backup file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    return-void

    :cond_4
    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_5
    move-wide/from16 v25, v5

    move-wide/from16 v27, v7

    :cond_6
    :goto_2
    :try_start_2
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v4, v0

    if-nez v4, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    return-void

    :cond_7
    iget-object v0, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v11, v5

    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v13, v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget v5, v1, Landroid/app/SharedPreferencesImpl;->mMode:I

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    move-object v5, v0

    iget-object v6, v1, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v0, v5, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v0, v1, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    iget-wide v7, v5, Landroid/system/StructStat;->st_size:J

    iput-wide v7, v1, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    monitor-exit v6

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_6
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-wide v5, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    iput-wide v5, v1, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    sub-long v5, v13, v11

    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    long-to-int v7, v5

    invoke-virtual {v0, v7}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    iget v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iput v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    iget v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    rem-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const-wide/16 v7, 0x100

    cmp-long v0, v5, v7

    if-lez v0, :cond_9

    :cond_8
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const-string v7, "SharedPreferencesImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time required to fsync "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_9
    return-void

    :catch_1
    move-exception v0

    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_4
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "SharedPreferencesImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clean up partially-written file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/SharedPreferencesImpl;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p2

    :goto_0
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 3

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v2, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startReloadIfChangedUnexpectedly()V
    .locals 2

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
