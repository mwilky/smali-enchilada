.class final Lcom/android/server/InputContentUriTokenHandler;
.super Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;
.source "InputContentUriTokenHandler.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPermissionOwnerToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    iput p2, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    iput-object p3, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    iput p5, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    return-void
.end method

.method private doTakeLocked(Landroid/os/IBinder;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    iget-object v5, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    iget v9, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputContentUriTokenHandler;->release()V
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

.method public release()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    :goto_0
    nop

    monitor-exit v0

    return-void

    :goto_1
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public take()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "InputContentUriTokenHandler"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/InputContentUriTokenHandler;->doTakeLocked(Landroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
