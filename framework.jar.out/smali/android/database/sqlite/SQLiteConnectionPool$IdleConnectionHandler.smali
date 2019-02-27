.class Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;
.super Landroid/os/Handler;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleConnectionHandler"
.end annotation


# instance fields
.field private final mTimeout:J

.field final synthetic this$0:Landroid/database/sqlite/SQLiteConnectionPool;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/os/Looper;J)V
    .locals 0

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-wide p3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mTimeout:J

    return-void
.end method


# virtual methods
.method connectionAcquired(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->removeMessages(I)V

    return-void
.end method

.method connectionClosed(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->removeMessages(I)V

    return-void
.end method

.method connectionReleased(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->getConnectionId()I

    move-result v0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mTimeout:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->access$000(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnectionPool;->access$300(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;

    move-result-object v1

    if-eq p0, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->access$400(Landroid/database/sqlite/SQLiteConnectionPool;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SQLiteConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closed idle connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnectionPool;->access$500(Landroid/database/sqlite/SQLiteConnectionPool;)Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$IdleConnectionHandler;->mTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
