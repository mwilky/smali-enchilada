.class public Landroid/os/UpdateLock;
.super Ljava/lang/Object;
.source "UpdateLock.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NOW_IS_CONVENIENT:Ljava/lang/String; = "nowisconvenient"

.field private static final TAG:Ljava/lang/String; = "UpdateLock"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final UPDATE_LOCK_CHANGED:Ljava/lang/String; = "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

.field private static sService:Landroid/os/IUpdateLock;


# instance fields
.field mCount:I

.field mHeld:Z

.field mRefCounted:Z

.field final mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/UpdateLock;->mCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    iput-boolean v0, p0, Landroid/os/UpdateLock;->mHeld:Z

    iput-object p1, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private acquireLocked()V
    .locals 3

    iget-boolean v0, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/UpdateLock;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/UpdateLock;->mCount:I

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    iget-object v1, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/os/IUpdateLock;->acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UpdateLock"

    const-string v2, "Unable to contact service to acquire"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/UpdateLock;->mHeld:Z

    :cond_2
    return-void
.end method

.method private static checkService()V
    .locals 1

    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    if-nez v0, :cond_0

    const-string/jumbo v0, "updatelock"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateLock$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateLock;

    move-result-object v0

    sput-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    :cond_0
    return-void
.end method

.method private releaseLocked()V
    .locals 3

    iget-boolean v0, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/UpdateLock;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/UpdateLock;->mCount:I

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    iget-object v1, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UpdateLock"

    const-string v2, "Unable to contact service to release"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/UpdateLock;->mHeld:Z

    :cond_2
    iget v0, p0, Landroid/os/UpdateLock;->mCount:I

    if-ltz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UpdateLock under-locked"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/os/UpdateLock;->acquireLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    if-eqz v1, :cond_0

    const-string v1, "UpdateLock"

    const-string v2, "UpdateLock finalized while still held"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    iget-object v2, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "UpdateLock"

    const-string v3, "Unable to contact service to release"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isHeld()Z
    .locals 2

    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/os/UpdateLock;->releaseLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setReferenceCounted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    return-void
.end method
