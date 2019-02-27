.class public final Landroid/database/CursorToBulkCursorAdaptor;
.super Landroid/database/BulkCursorNative;
.source "CursorToBulkCursorAdaptor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mCursor:Landroid/database/CrossProcessCursor;

.field private mFilledWindow:Landroid/database/CursorWindow;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

.field private final mProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/database/BulkCursorNative;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    instance-of v0, p1, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/database/CrossProcessCursor;

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/database/CrossProcessCursorWrapper;

    invoke-direct {v0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    :goto_0
    iput-object p3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private closeFilledWindowLocked()V
    .locals 1

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    :cond_0
    return-void
.end method

.method private createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V
    .locals 2

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-direct {v0, p1, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;-><init>(Landroid/database/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "an observer is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disposeLocked()V
    .locals 1

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    :cond_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    return-void
.end method

.method private throwIfCursorIsClosed()V
    .locals 2

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempted to access a cursor after it has been closed."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unregisterObserverProxyLocked()V
    .locals 2

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-virtual {v0, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deactivate()V
    .locals 2

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->deactivate()V

    :cond_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;
    .locals 3

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    new-instance v1, Landroid/database/BulkCursorDescriptor;

    invoke-direct {v1}, Landroid/database/BulkCursorDescriptor;-><init>()V

    iput-object p0, v1, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getWantsAllOnMoveCalls()Z

    move-result v2

    iput-boolean v2, v1, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/database/BulkCursorDescriptor;->count:I

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    iput-object v2, v1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    iget-object v2, v1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->acquireReference()V

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindow(I)Landroid/database/CursorWindow;
    .locals 4

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    move-object v1, v2

    if-nez v1, :cond_2

    new-instance v2, Landroid/database/CursorWindow;

    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    if-lt p1, v2, :cond_3

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_4

    :cond_3
    invoke-virtual {v1}, Landroid/database/CursorWindow;->clear()V

    :cond_4
    :goto_0
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2, p1, v1}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/CursorWindow;->acquireReference()V

    :cond_5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMove(I)V
    .locals 3

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requery(Landroid/database/IContentObserver;)I
    .locals 5

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->requery()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :try_start_2
    monitor-exit v0

    return v1

    :cond_0
    nop

    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    invoke-direct {p0, p1}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;)V

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v1

    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Requery misuse db, mCursor isClosed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v4}, Landroid/database/CrossProcessCursor;->isClosed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1}, Landroid/database/CrossProcessCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
