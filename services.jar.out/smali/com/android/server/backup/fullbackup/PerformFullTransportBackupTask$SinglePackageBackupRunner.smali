.class Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;
.super Ljava/lang/Object;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinglePackageBackupRunner"
.end annotation


# instance fields
.field final mBackupLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mBackupResult:I

.field private final mCurrentOpToken:I

.field private mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

.field private final mEphemeralToken:I

.field private volatile mIsCancelled:Z

.field final mOutput:Landroid/os/ParcelFileDescriptor;

.field final mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

.field final mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mPreflightResult:I

.field private final mQuota:J

.field final mTarget:Landroid/content/pm/PackageInfo;

.field private final mTransportFlags:I

.field final synthetic this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;JII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    iput-object v8, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    move-object v9, p3

    iput-object v9, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    move/from16 v10, p7

    iput v10, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    invoke-static {v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEphemeralToken:I

    new-instance v11, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    iget v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEphemeralToken:I

    move-object v1, v11

    move-object v2, v8

    move-object/from16 v3, p4

    move-wide/from16 v4, p5

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Lcom/android/server/backup/transport/TransportClient;JII)V

    iput-object v11, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    const/16 v1, -0x3eb

    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I

    move-wide/from16 v1, p5

    iput-wide v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mQuota:J

    move/from16 v3, p8

    iput v3, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTransportFlags:I

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->registerTask()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    return-void
.end method

.method getBackupResultBlocking()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$000(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    if-eqz v2, :cond_0

    const/16 v2, -0x7d3

    return v2

    :cond_0
    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const/16 v3, -0x3eb

    return v3
.end method

.method getPreflightResultBlocking()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$000(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x7d3

    return-wide v2

    :cond_0
    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->getExpectedSizeOrErrorCode()J

    move-result-wide v2

    return-wide v2

    :cond_1
    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    return-wide v2

    :catch_0
    move-exception v2

    const-wide/16 v3, -0x3eb

    return-wide v3
.end method

.method public handleCancel(Z)V
    .locals 6

    const-string v0, "PFTBT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full backup cancel of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v2, v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEphemeralToken:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/backup/BackupManagerService;->handleCancel(IZ)V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    return-void
.end method

.method public operationComplete(J)V
    .locals 0

    return-void
.end method

.method registerTask()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0, v4}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 12

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v11, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    iget-object v4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-wide v7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mQuota:J

    iget v9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    iget v10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTransportFlags:I

    const/4 v5, 0x0

    move-object v0, v11

    move-object v6, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JII)V

    iput-object v11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->preflightCheck()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    nop

    iget v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->unregisterTask()V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PFTBT"

    const-string v3, "Error closing transport pipe in runner"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during full package backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->unregisterTask()V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :try_start_5
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->unregisterTask()V

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    const-string v3, "PFTBT"

    const-string v4, "Error closing transport pipe in runner"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    throw v0
.end method

.method public sendQuotaExceeded(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->sendQuotaExceeded(JJ)V

    return-void
.end method

.method unregisterTask()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
