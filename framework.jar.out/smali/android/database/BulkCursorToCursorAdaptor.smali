.class public final Landroid/database/BulkCursorToCursorAdaptor;
.super Landroid/database/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BulkCursor"


# instance fields
.field private mBulkCursor:Landroid/database/IBulkCursor;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

.field private mWantsAllOnMoveCalls:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    return-void
.end method

.method private throwIfCursorIsClosed()V
    .locals 2

    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempted to access a cursor after it has been closed."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1}, Landroid/database/IBulkCursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "BulkCursor"

    const-string v3, "Remote process exception when closing"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public deactivate()V
    .locals 3

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v0}, Landroid/database/IBulkCursor;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BulkCursor"

    const-string v2, "Remote process exception when deactivating"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    iget v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    :try_start_0
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v0}, Landroid/database/IBulkCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getObserver()Landroid/database/IContentObserver;
    .locals 1

    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mObserverBridge:Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-virtual {v0}, Landroid/database/AbstractCursor$SelfContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/database/BulkCursorDescriptor;)V
    .locals 1

    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    iget-boolean v0, p1, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    iput-boolean v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    iget v0, p1, Landroid/database/BulkCursorDescriptor;->count:I

    iput v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {p0, v0}, Landroid/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V

    :cond_0
    return-void
.end method

.method public onMove(II)Z
    .locals 4

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->onMove(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v1, p2}, Landroid/database/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    nop

    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-nez v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "BulkCursor"

    const-string v3, "Unable to get window because the remote process is dead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public requery()Z
    .locals 5

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/IBulkCursor;->requery(Landroid/database/IContentObserver;)I

    move-result v1

    iput v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    iget v1, p0, Landroid/database/BulkCursorToCursorAdaptor;->mCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iput v2, p0, Landroid/database/BulkCursorToCursorAdaptor;->mPos:I

    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->closeWindow()V

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "BulkCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to requery because the remote process exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/BulkCursorToCursorAdaptor;->deactivate()V

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    invoke-direct {p0}, Landroid/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    :try_start_0
    iget-object v0, p0, Landroid/database/BulkCursorToCursorAdaptor;->mBulkCursor:Landroid/database/IBulkCursor;

    invoke-interface {v0, p1}, Landroid/database/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BulkCursor"

    const-string/jumbo v2, "respond() threw RemoteException, returning an empty bundle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v1
.end method
