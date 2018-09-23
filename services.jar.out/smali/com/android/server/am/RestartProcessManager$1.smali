.class Lcom/android/server/am/RestartProcessManager$1;
.super Ljava/lang/Thread;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/RestartProcessManager;->writeRecord(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/RestartProcessManager;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/android/server/am/RestartProcessManager;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    iput-wide p3, p0, Lcom/android/server/am/RestartProcessManager$1;->val$now:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$1;->val$now:J

    invoke-static {v0, v1}, Lcom/android/server/am/RestartProcessManager;->access$002(J)J

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager;->access$100(Lcom/android/server/am/RestartProcessManager;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "record.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v4}, Lcom/android/server/am/RestartProcessManager;->access$100(Lcom/android/server/am/RestartProcessManager;)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "record_backup.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager;->access$100(Lcom/android/server/am/RestartProcessManager;)Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "record.txt"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v3, v4}, Lcom/android/server/am/RestartProcessManager;->access$202(Lcom/android/server/am/RestartProcessManager;Landroid/util/AtomicFile;)Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager;->access$200(Lcom/android/server/am/RestartProcessManager;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HasWarmUp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$300()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WarmUpTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$400()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$500()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$500()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v7}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v9}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$800(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v10

    invoke-static {v9}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$900(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-static {v9, v10, v11}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$702(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->toRecord()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v5}, Lcom/android/server/am/RestartProcessManager;->access$200(Lcom/android/server/am/RestartProcessManager;)Landroid/util/AtomicFile;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string v5, "RestartProcessManager"

    const-string v6, "Finishing writting old record"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "RestartProcessManager"

    const-string v5, "Error writing process statistics"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$1;->this$0:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v4}, Lcom/android/server/am/RestartProcessManager;->access$200(Lcom/android/server/am/RestartProcessManager;)Landroid/util/AtomicFile;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager;->access$1002(Z)Z

    nop

    return-void

    :goto_3
    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager;->access$1002(Z)Z

    throw v3
.end method
