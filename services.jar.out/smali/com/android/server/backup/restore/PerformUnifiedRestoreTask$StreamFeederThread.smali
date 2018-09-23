.class Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

.field private final mEphemeralOpToken:I

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    const-string v0, "StreamFeederThread"

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    return-void
.end method

.method public handleCancel(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    const-string v0, "StreamFeederThread"

    const-string v1, "Full-data restore target timed out; shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$200(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x2d

    const/4 v5, 0x2

    invoke-static {v1, v4, v2, v5, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$202(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->handleTimeout()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v3, v0, v1

    return-void
.end method

.method public operationComplete(J)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 20

    move-object/from16 v10, p0

    sget-object v11, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/4 v12, 0x0

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0xb1c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v2

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$200(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v9, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V

    iput-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v3, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;-><init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v3, v0, v4

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v5, v0, v1

    const v6, 0x8000

    new-array v7, v6, [B

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v8, v0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v0

    new-instance v0, Ljava/lang/Thread;

    iget-object v13, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    const-string/jumbo v14, "unified-restore-engine"

    invoke-direct {v0, v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "PerformUnifiedRestoreTask$StreamFeederThread.run()"

    move-object v13, v0

    :try_start_0
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    :goto_0
    if-nez v12, :cond_4

    invoke-interface {v0, v5}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v16

    move/from16 v17, v16

    move/from16 v15, v17

    if-lez v15, :cond_2

    if-le v15, v6, :cond_0

    move v6, v15

    new-array v1, v6, [B

    move-object v7, v1

    :cond_0
    move v1, v15

    :goto_1
    if-lez v1, :cond_1

    invoke-virtual {v9, v7, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v16

    move/from16 v18, v16

    move/from16 v14, v18

    invoke-virtual {v8, v7, v4, v14}, Ljava/io/FileOutputStream;->write([BII)V

    sub-int/2addr v1, v14

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    if-ne v15, v1, :cond_3

    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    const-string v1, "StreamFeederThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " streaming restore for "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    const/16 v1, 0xb0f

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v15

    move v12, v1

    :goto_2
    const/4 v1, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    :goto_3
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    if-nez v12, :cond_6

    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    goto :goto_7

    :cond_6
    :try_start_1
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "StreamFeederThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport threw from abortFullRestore: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, -0x3e8

    :goto_5
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    const/16 v1, -0x3e8

    if-ne v12, v1, :cond_7

    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    :goto_6
    goto :goto_7

    :cond_7
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_6

    :goto_7
    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_10

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "StreamFeederThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport failed during restore: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    const/16 v1, 0xb0f

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v1, -0x3e8

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v12, 0x0

    aget-object v0, v0, v12

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v12

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    invoke-static {v0, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    if-nez v1, :cond_9

    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    :goto_9
    move v12, v1

    goto/16 :goto_7

    :cond_9
    :try_start_3
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    const-string v4, "StreamFeederThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport threw from abortFullRestore: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    :goto_a
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0, v4, v12}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    const/16 v4, -0x3e8

    if-ne v1, v4, :cond_a

    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    :goto_b
    goto :goto_9

    :cond_a
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_b

    :catch_3
    move-exception v0

    :try_start_4
    const-string v1, "StreamFeederThread"

    const-string v4, "Unable to route data for restore"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v14, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v14}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v4, v15

    const-string v14, "I/O error on pipes"

    const/4 v15, 0x1

    aput-object v14, v4, v15

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v1, -0x3eb

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v15

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v15

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x0

    :goto_c
    invoke-static {v0, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    if-nez v1, :cond_c

    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    goto/16 :goto_9

    :cond_c
    :try_start_5
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    const-string v4, "StreamFeederThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport threw from abortFullRestore: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    :goto_d
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0, v4, v12}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    const/16 v4, -0x3e8

    if-ne v1, v4, :cond_d

    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    :goto_e
    goto/16 :goto_9

    :cond_d
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_e

    :goto_f
    return-void

    :goto_10
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v14, 0x0

    aget-object v0, v0, v14

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v14

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v14, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v14

    if-eqz v14, :cond_e

    goto :goto_11

    :cond_e
    const/4 v4, 0x0

    :goto_11
    invoke-static {v0, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    if-eqz v12, :cond_10

    :try_start_6
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    const-string v4, "StreamFeederThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Transport threw from abortFullRestore: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    move v12, v0

    :goto_12
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v0, v4, v14}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    const/16 v4, -0x3e8

    if-ne v12, v4, :cond_f

    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    :goto_13
    goto :goto_14

    :cond_f
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_13

    :cond_10
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    :goto_14
    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    throw v1
.end method
