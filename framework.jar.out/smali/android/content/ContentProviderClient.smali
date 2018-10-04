.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderClient$CursorWrapperInner;,
        Landroid/content/ContentProviderClient$NotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProviderClient"

.field private static sAnrHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ContentProviderClient.class"
    .end annotation
.end field


# instance fields
.field private mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

.field private mAnrTimeout:J

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContentProvider:Landroid/content/IContentProvider;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mPackageName:Ljava/lang/String;

.field private final mStable:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v0, p1, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/content/ContentProviderClient;->mStable:Z

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private afterRemote()V
    .locals 2

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private beforeRemote()V
    .locals 4

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    iget-wide v2, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private closeInternal()Z
    .locals 3

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static releaseQuietly(Landroid/content/ContentProviderClient;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const-string/jumbo v0, "operations"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "initialValues"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "method"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

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
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
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

.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "mimeTypeFilter"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :goto_1
    nop

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :goto_1
    nop

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "mimeType"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {p4, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :goto_1
    nop

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {p4, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v2

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/ContentProviderClient$CursorWrapperInner;

    invoke-direct {v2, p0, v1}, Landroid/content/ContentProviderClient$CursorWrapperInner;-><init>(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v2

    :goto_1
    nop

    :try_start_2
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-static {p3, p4, p5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/content/IContentProvider;->refresh(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v1

    :goto_1
    nop

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public release()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    move-result v0

    return v0
.end method

.method public setDetectNotResponding(J)V
    .locals 5

    const-class v0, Landroid/content/ContentProviderClient;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-direct {v1, p0, v2}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$1;)V

    iput-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    :cond_0
    sget-object v1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object v1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    :cond_1
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method
