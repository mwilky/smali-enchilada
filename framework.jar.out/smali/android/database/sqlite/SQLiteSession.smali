.class public final Landroid/database/sqlite/SQLiteSession;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteSession$Transaction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TRANSACTION_MODE_DEFERRED:I = 0x0

.field public static final TRANSACTION_MODE_EXCLUSIVE:I = 0x2

.field public static final TRANSACTION_MODE_IMMEDIATE:I = 0x1


# instance fields
.field private mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private mConnectionFlags:I

.field private final mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mConnectionUseCount:I

.field private mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

.field private mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iput p2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    return-void
.end method

.method private beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .locals 4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0, v1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v2, "BEGIN EXCLUSIVE;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v2, "BEGIN IMMEDIATE;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    goto :goto_1

    :goto_0
    const-string v2, "BEGIN;"

    invoke-virtual {v0, v2, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    :try_start_1
    invoke-interface {p2}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v3, "ROLLBACK;"

    invoke-virtual {v2, v3, v1, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    :cond_3
    throw v0

    :cond_4
    :goto_2
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteSession;->obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v1, :cond_6

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    :cond_6
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v4}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_3

    :goto_2
    nop

    move-object v3, v5

    const/4 v1, 0x0

    :cond_4
    :goto_3
    iget-object v5, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteSession;->recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v5, :cond_5

    if-nez v1, :cond_7

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-boolean v2, v5, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    :try_start_1
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "COMMIT;"

    invoke-virtual {v5, v6, v2, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_6

    :cond_6
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string v6, "ROLLBACK;"

    invoke-virtual {v5, v6, v2, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    nop

    :cond_7
    :goto_5
    if-nez v3, :cond_8

    return-void

    :cond_8
    throw v3

    :goto_6
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v2
.end method

.method private executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z
    .locals 4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    return v1

    :pswitch_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V

    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    return v1

    :pswitch_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;
    .locals 3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/database/sqlite/SQLiteSession$Transaction;

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteSession$Transaction;-><init>(Landroid/database/sqlite/SQLiteSession$1;)V

    move-object v0, v2

    :goto_0
    iput p1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    iput-object p2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    return-object v0
.end method

.method private recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    return-void
.end method

.method private releaseConnection()V
    .locals 3

    nop

    nop

    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private throwIfNestedTransaction()V
    .locals 2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->hasNestedTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because a nested transaction is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfNoTransaction()V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because there is no current transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfTransactionMarkedSuccessful()V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z
    .locals 6

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    iget v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    const/4 v3, 0x1

    invoke-direct {p0, p3, v3}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_2

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1, v2, p3}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    return v3
.end method


# virtual methods
.method public beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    return-void
.end method

.method public endTransaction(Landroid/os/CancellationSignal;)V
    .locals 1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    nop

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I
    .locals 14

    move-object v1, p0

    move-object v10, p1

    move/from16 v11, p7

    move-object/from16 v12, p8

    if-eqz v10, :cond_2

    if-eqz p3, :cond_1

    move-object/from16 v13, p2

    invoke-direct {v1, v10, v13, v11, v12}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->clear()V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {v1, v10, v11, v12}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_0
    iget-object v2, v1, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    move-object v3, v10

    move-object v4, v13

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v9, v12

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    :cond_1
    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasConnection()Z
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNestedTransaction()Z
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p4}, Landroid/database/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransactionSuccessful()V
    .locals 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    return-void
.end method

.method public yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    nop

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0, p1, p2, p4}, Landroid/database/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    return v0
.end method
