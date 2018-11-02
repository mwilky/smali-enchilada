.class public Lcom/android/server/backup/internal/PerformBackupTask;
.super Ljava/lang/Object;
.source "PerformBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private mAgentBinder:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mCurrentState:Lcom/android/server/backup/internal/BackupState;

.field private volatile mEphemeralOpToken:I

.field private mFinished:Z

.field private final mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private final mNonIncremental:Z

.field private mObserver:Landroid/app/backup/IBackupObserver;

.field private mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFullBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/ParcelFileDescriptor;

.field private mSavedStateName:Ljava/io/File;

.field private mStateDir:Ljava/io/File;

.field private mStatus:I

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field private final mUserInitiated:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/BackupManagerService;",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    iput-object v14, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v15, p2

    iput-object v15, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    move-object/from16 v13, p4

    iput-object v13, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    move-object/from16 v12, p5

    iput-object v12, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    move-object/from16 v11, p6

    iput-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v10, p7

    iput-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_0
    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    move-object/from16 v8, p9

    iput-object v8, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    move/from16 v7, p10

    iput-boolean v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    move/from16 v5, p11

    iput-boolean v5, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v2, "Timeout parameters cannot be null"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v2

    move-object/from16 v4, p3

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "PerformBackupTask"

    const-string v3, "Skipping backup since one is already in progress."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    const-string v0, "Skipped. Backup already in progress."

    invoke-virtual {v14, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->INITIAL:Lcom/android/server/backup/internal/BackupState;

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    iget-object v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v3, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v8, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    move-object/from16 v20, v8

    iget-boolean v8, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v22, v3

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v17

    move/from16 v7, v18

    move/from16 v18, v8

    move-object/from16 v17, v20

    move-object/from16 v8, v19

    move-object/from16 v10, v22

    move-object/from16 v11, v21

    move-object/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->registerTask()V

    const-string v0, "STATE => INITIAL"

    invoke-virtual {v14, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :goto_1
    monitor-exit v16

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    nop

    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string v1, "PerformBackupTask"

    const-string v2, "Unable to use SHA-1!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "00"

    return-object v1
.end method

.method private backupPm()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v0

    const-string v1, "@pm@"

    invoke-virtual {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PMBA invoke: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting backupPm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "PerformBackupTask"

    const-string v2, "Error in backup thread during pm"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in backup thread during pm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting backupPm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentToObserverError(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_0
    return-void

    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exiting backupPm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-direct {p0, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentToObserverError(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    sget-object v1, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v1}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_1
    throw v0
.end method

.method private beginBackup()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "beginBackup: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/BackupRequest;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PerformBackupTask"

    const-string v2, "Backup begun with an empty queue - nothing to do."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "queue empty at begin"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const-string v3, "@pm@"

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v4, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beginning backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " targets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v4, "@pm@"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, -0x3e8

    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v5, "PBT.beginBackup()"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb05

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v6, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    const-string v6, "PerformBackupTask"

    const-string v7, "Initializing (wiping) backup state and transport storage"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initializing transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v6

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "transport.initializeDevice() == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v6, :cond_4

    const/16 v6, 0xb0b

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_3

    :cond_4
    const/16 v0, 0xb06

    const-string v6, "(initialize)"

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string v0, "PerformBackupTask"

    const-string v6, "Transport error in initializeDevice()"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    const-string v0, "PerformBackupTask"

    const-string v6, "Skipping backup of package metadata."

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->BACKUP_PM:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting prelim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_8

    :goto_5
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "PerformBackupTask"

    const-string v5, "Error in backup thread during init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in backup thread during init: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iput v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting prelim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    :goto_6
    return-void

    :goto_7
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exiting prelim: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_9
    throw v0
.end method

.method private clearAgentState()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :try_start_4
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :cond_3
    :goto_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method private clearMetadata()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private errorCleanup()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearAgentState()V

    return-void
.end method

.method private executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeNextState => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error conveying failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private finalizeBackup()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "finishing"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove backup journal file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "PBT.finalizeBackup()"

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentToken()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "success; recording token"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->setCurrentToken(J)V

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport threw reporting restore set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "transport threw returning token"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->setBackupRunning(Z)V

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v4, -0x3e9

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "init required; rerunning"

    invoke-virtual {v2, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    invoke-virtual {v4}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_3
    const-string v4, "PerformBackupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to query transport name for init: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearMetadata()V

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->backupNow()V

    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->unregisterTask()V

    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting full backups for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string v3, "full-transport-requested"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    :cond_5
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v2, -0x7d3

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v2, -0x3ed

    if-eq v1, v2, :cond_7

    if-eqz v1, :cond_7

    const/16 v2, -0x3e8

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto :goto_3

    :cond_7
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    nop

    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    const-string v1, "PerformBackupTask"

    const-string v2, "K/V backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)I
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invokeAgentForBackup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v2, "blank_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    const/4 v10, 0x0

    :try_start_0
    const-string v0, "@pm@"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_0
    nop

    iget-boolean v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_1

    move-object v0, v9

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    :goto_0
    const/high16 v2, 0x18000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v2, 0x3c000000    # 0.0078125f

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELinux restorecon failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v2, "PBT.invokeAgentForBackup()"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, v8, v10}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v20, 0x1

    :try_start_1
    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "setting timeout"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v3

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    const/4 v6, 0x0

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "calling agent doBackup()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v12, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v13, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v14, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    iget-object v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v18

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v19

    move-object/from16 v11, p2

    move/from16 v17, v1

    invoke-interface/range {v11 .. v19}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    return v10

    :catchall_0
    move-exception v0

    move/from16 v1, v20

    goto :goto_3

    :catch_0
    move-exception v0

    move/from16 v1, v20

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error invoking for backup on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/16 v2, 0xb07

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v10

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    const/16 v2, -0x3eb

    goto :goto_2

    :cond_4
    const/16 v2, -0x3e8

    :goto_2
    iget-boolean v3, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v3, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_5
    return v2

    :goto_3
    iget-boolean v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v2, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_6
    throw v0
.end method

.method private invokeAgentToObserverError(I)I
    .locals 1

    const/16 v0, -0x3eb

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method private invokeNextAgent()V
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invoke q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting key/value backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launch agent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/16 v2, -0x7d2

    const/16 v3, -0x3ec

    const/4 v4, 0x0

    const/16 v5, -0x3eb

    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    const/high16 v8, 0x8000000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7, v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v7

    const/16 v8, -0x7d1

    if-nez v7, :cond_5

    const-string v7, "PerformBackupTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " no longer supports backup; skipping"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "skipping - not eligible, completion is noop"

    invoke-virtual {v7, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_2

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_3

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "PerformBackupTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " requests full-data rather than key/value; skipping"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "skipping - fullBackupOnly, completion is noop"

    invoke-virtual {v7, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_7

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_6
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_8

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_a
    :try_start_2
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "skipping - stopped"

    invoke-virtual {v7, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_e

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_c

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_b
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_4

    :cond_c
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_d

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_4

    :cond_d
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :goto_4
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_f
    move-object v7, v4

    :try_start_3
    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    new-instance v9, Landroid/os/WorkSource;

    iget-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v9, v10}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9, v0}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v8

    move-object v7, v8

    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agent bound; a? = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_10

    const/4 v10, 0x1

    goto :goto_6

    :cond_10
    move v10, v0

    :goto_6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    if-eqz v7, :cond_11

    iput-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget-object v8, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)I

    move-result v8

    iput v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    goto :goto_7

    :cond_11
    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    goto :goto_8

    :catch_0
    move-exception v8

    :try_start_4
    const-string v9, "PerformBackupTask"

    const-string v10, "error in bind/backup"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v10, "agent SE"

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v6, :cond_16

    sget-object v6, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_12

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v6, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_9

    :cond_12
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_15

    goto :goto_a

    :catchall_0
    move-exception v6

    goto :goto_d

    :catch_1
    move-exception v6

    :try_start_5
    const-string v7, "PerformBackupTask"

    const-string v8, "Package does not exist; skipping"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v8, "no such package"

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iput v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v6, :cond_16

    sget-object v6, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_14

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v6, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_13
    :goto_9
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_b

    :cond_14
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_15

    :goto_a
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_b

    :cond_15
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v6, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :goto_b
    invoke-direct {p0, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_c

    :cond_16
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    nop

    :goto_c
    return-void

    :goto_d
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_1a

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_18

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_17
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_e

    :cond_18
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_19

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_e

    :cond_19
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :goto_e
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_f

    :cond_1a
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :goto_f
    throw v6
.end method

.method private registerTask()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

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

.method private revertAndEndBackup()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "transport error; reverting"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "PBT.revertAndEndBackup()"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to contact transport for recommended backoff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v3, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method private unregisterTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    return-void
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_widget"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    nop

    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    nop

    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v4, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :catchall_0
    move-exception v7

    move-object v8, v4

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_0
    :try_start_4
    invoke-static {v8, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    invoke-static {v4, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6

    :cond_1
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    invoke-direct {v5, p1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    if-eqz v0, :cond_2

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    nop

    :try_start_6
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    nop

    :try_start_7
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {v4, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {v4, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    const-string/jumbo v4, "\uffed\uffedwidget"

    array-length v6, v0

    invoke-virtual {v5, v4, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v4, v0

    invoke-virtual {v5, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_4

    :catchall_3
    move-exception v8

    move-object v9, v4

    goto :goto_2

    :catch_2
    move-exception v8

    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v9

    move-object v10, v9

    move-object v9, v8

    move-object v8, v10

    :goto_2
    :try_start_a
    invoke-static {v9, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v8
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v4

    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_3
    invoke-static {v4, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7

    :cond_2
    const-string/jumbo v4, "\uffed\uffedwidget"

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_4
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/backup/internal/PerformBackupTask$1;->$SwitchMap$com$android$server$backup$internal$BackupState:[I

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {v2}, Lcom/android/server/backup/internal/BackupState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->finalizeBackup()V

    goto :goto_0

    :cond_0
    const-string v1, "PerformBackupTask"

    const-string v2, "Duplicate finish of K/V pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeNextAgent()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->backupPm()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->beginBackup()V

    nop

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleCancel(Z)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "no_package_yet"

    :goto_0
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb07

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cancelAll="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0x15

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "android.app.backup.extra.LOG_CANCEL_ALL"

    iget-boolean v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    invoke-static {v6, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V

    if-nez p1, :cond_3

    nop

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->finalizeBackup()V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public operationComplete(J)V
    .locals 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    iget-object v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-eqz v0, :cond_0

    const-string v0, "PerformBackupTask"

    const-string/jumbo v3, "operationComplete received after task finished."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "[none]"

    :goto_0
    iget-object v3, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "late opComplete; curPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_2
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v3, v0

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v6, v0

    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v12

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v14, v0

    new-instance v0, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v0, v15}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_1
    move-object v15, v0

    :try_start_2
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v7, 0xff00

    if-lt v9, v7, :cond_4

    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal backup key: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/android/server/backup/internal/PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "illegal key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/16 v7, 0xb07

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v13

    const-string v9, "bad key"

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v8, 0x5

    iget-object v9, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v12, "android.app.backup.extra.LOG_ILLEGAL_KEY"

    invoke-static {v10, v12, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v11, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v8, -0x3eb

    invoke-static {v7, v3, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_3

    :try_start_3
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :cond_4
    :try_start_5
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    move-object v0, v15

    const/high16 v9, 0x10000000

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_5
    if-eqz v14, :cond_7

    :try_start_6
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_6
    throw v0

    :cond_7
    :goto_2
    invoke-direct {v1, v6, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v7, v0

    :try_start_7
    const-string v0, "PerformBackupTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save widget state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {v6, v4, v5}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v0

    :try_start_9
    const-string v8, "PerformBackupTask"

    const-string v9, "Unable to roll back!"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearAgentState()V

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "operation complete"

    invoke-virtual {v0, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v7, "PBT.operationComplete()"

    invoke-virtual {v0, v7}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    move-object v7, v0

    const/4 v8, 0x0

    iput v13, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-wide/16 v11, 0x0

    move-wide v14, v11

    const/16 v9, -0x3ee

    :try_start_a
    invoke-static {v7}, Lcom/android/server/backup/transport/TransportUtils;->checkTransportNotNull(Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v14, v18

    cmp-long v0, v14, v11

    if-lez v0, :cond_e

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v0, v16, v11

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iget v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v11, :cond_a

    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v12, 0x10000000

    invoke-static {v11, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    move-object v8, v11

    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v12, "sending data to transport"

    invoke-virtual {v11, v12}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-boolean v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    if-eqz v0, :cond_9

    const/4 v12, 0x4

    goto :goto_5

    :cond_9
    const/4 v12, 0x2

    :goto_5
    or-int v13, v11, v12

    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v7, v10, v8, v13}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v10

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    :cond_a
    if-eqz v0, :cond_b

    iget v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v10, v9, :cond_b

    const-string v10, "PerformBackupTask"

    const-string v11, "Transport requested non-incremental but already the case, error"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v11, "Transport requested non-incremental but already the case, error"

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/16 v10, -0x3e8

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    :cond_b
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data delivered: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v10, :cond_c

    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v11, "finishing op on transport"

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v10

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "finished: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    iget v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v11, -0x3ea

    if-ne v10, v11, :cond_d

    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v11, "transport rejected package"

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :cond_d
    :goto_6
    goto :goto_7

    :cond_e
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v10, "no data to send"

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v10, 0x7

    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v0, v10, v11, v13, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :goto_7
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v0, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/4 v10, 0x0

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v0, 0xb08

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3ea

    if-ne v0, v10, :cond_10

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v10, -0x3ea

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string v0, "Transport rejected"

    invoke-static {v3, v0}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3ed

    if-ne v0, v10, :cond_11

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v0, 0xb0d

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_8

    :cond_11
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v0, v9, :cond_12

    const-string v0, "PerformBackupTask"

    const-string v10, "Transport lost data, retrying package"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transport lost data, retrying package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x33

    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v0, v10, v11, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "@pm@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/backup/internal/BackupRequest;

    invoke-direct {v10, v3}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    :cond_12
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v10, -0x3e8

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v10, 0xb06

    invoke-static {v10, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_13
    :goto_8
    if-eqz v8, :cond_14

    :try_start_b
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_14
    :goto_9
    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v9, v8

    move-object v8, v0

    goto/16 :goto_f

    :catch_3
    move-exception v0

    :try_start_c
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v11, -0x3e8

    invoke-static {v10, v3, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string v10, "PerformBackupTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transport error backing up "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v10, 0xb06

    invoke-static {v10, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/16 v10, -0x3e8

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v8, :cond_14

    :try_start_d
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_9

    :goto_a
    :try_start_e
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_1b

    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3ea

    if-ne v0, v10, :cond_15

    goto :goto_d

    :cond_15
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v0, v9, :cond_17

    const-string v0, "@pm@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->BACKUP_PM:Lcom/android/server/backup/internal/BackupState;

    goto :goto_e

    :cond_16
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    goto :goto_e

    :cond_17
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v9, -0x3ed

    if-ne v0, v9, :cond_1a

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v0, :cond_18

    :try_start_f
    invoke-static {v7}, Lcom/android/server/backup/transport/TransportUtils;->checkTransportNotNull(Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v7, v0, v9}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v9

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    invoke-interface {v0, v14, v15, v9, v10}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_b

    :catch_4
    move-exception v0

    :try_start_10
    const-string v9, "PerformBackupTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to notify about quota exceeded: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_b
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_c

    :cond_19
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    :goto_c
    goto :goto_e

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_e

    :cond_1b
    :goto_d
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_e

    :cond_1c
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    :goto_e
    nop

    invoke-direct {v1, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    return-void

    :goto_f
    nop

    if-eqz v9, :cond_1d

    :try_start_11
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_10

    :catch_5
    move-exception v0

    nop

    :cond_1d
    :goto_10
    :try_start_12
    throw v8

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    throw v0
.end method
