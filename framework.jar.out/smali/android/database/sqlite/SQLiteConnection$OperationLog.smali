.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

.field private final mPool:Landroid/database/sqlite/SQLiteConnectionPool;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 7

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->access$500(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    iget-wide v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v5, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v3, v5

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v5, v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->onStatementExecuted(J)V

    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v5, :cond_1

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 3

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    if-eqz p2, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "SQLiteConnection"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-instance v5, Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {v5, v4}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection$1;)V

    move-object v2, v5

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aput-object v2, v4, v1

    goto :goto_0

    :cond_0
    iput-boolean v3, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    iput-object v4, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    iget-object v4, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    iput-object p1, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    iput-object p2, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz p3, :cond_4

    iget-object v4, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    iget-object v4, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_1
    nop

    :goto_2
    array-length v4, p3

    if-ge v3, v4, :cond_4

    aget-object v4, p3, v3

    if-eqz v4, :cond_3

    instance-of v5, v4, [B

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->access$400()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v5, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v3

    iput v3, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v3, 0x100000

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->access$500(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v3, v4, v5, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_5
    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    iget v3, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 9

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    const-string v1, "  Most recently executed operations:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v2, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    :goto_0
    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v7, v7, v1

    move-object v2, v7

    if-eqz v2, :cond_2

    const/16 v5, 0x14

    if-lt v4, v5, :cond_0

    :cond_2
    goto :goto_1

    :cond_3
    const-string v3, "    <none>"

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endOperation(I)V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

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

.method public endOperationDeferLog(I)Z
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

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

.method public failOperation(ILjava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

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

.method public logOperation(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
