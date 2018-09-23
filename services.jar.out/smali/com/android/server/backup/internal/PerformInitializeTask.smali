.class public Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "PerformInitializeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private final mBaseStateDir:Ljava/io/File;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mObserver:Landroid/app/backup/IBackupObserver;

.field private final mQueue:[Ljava/lang/String;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iput-object p5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iput-object p6, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 7

    nop

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V

    return-void
.end method

.method private notifyFinished(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    :goto_0
    return-void
.end method

.method private notifyResult(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "PerformInitializeTask.run()"

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    const/4 v0, 0x0

    move v4, v0

    :try_start_0
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v7, v4

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_3

    :try_start_1
    aget-object v8, v5, v4

    iget-object v9, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v9, v8, v2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested init for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " but not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v20, v5

    move/from16 v21, v6

    goto/16 :goto_1

    :cond_0
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v9}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xb05

    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v9, v2}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v14

    if-nez v14, :cond_1

    invoke-interface {v13}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v15

    move v14, v15

    :cond_1
    if-nez v14, :cond_2

    const-string v15, "BackupManagerService"

    const-string v0, "Device init successful"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v20, v5

    move/from16 v21, v6

    sub-long v5, v18, v11

    long-to-int v0, v5

    const/16 v5, 0xb0b

    const/4 v6, 0x0

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v5, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x1

    aput-object v6, v15, v16

    const/16 v6, 0xb09

    invoke-static {v6, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v8, v10}, Lcom/android/server/backup/BackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v8, v15}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V

    nop

    :goto_1
    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v20, v5

    move/from16 v21, v6

    const-string v0, "BackupManagerService"

    const-string v5, "Transport error in initializeDevice()"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb06

    const-string v5, "(initialize)"

    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v8, v10}, Lcom/android/server/backup/BackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v8, v14}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v5, v14

    :try_start_2
    invoke-interface {v13}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v6

    const-string v0, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v22, v5

    :try_start_3
    const-string v5, "Init failed on "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " resched in "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    add-long v8, v15, v6

    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v8, v9, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v7, v22

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v0, v15

    move-object/from16 v5, v20

    move/from16 v6, v21

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move/from16 v7, v22

    goto :goto_7

    :catch_0
    move-exception v0

    move/from16 v4, v22

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v22, v5

    move/from16 v7, v22

    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v22, v5

    move/from16 v4, v22

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move v4, v7

    goto :goto_4

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportClient;

    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-direct {v1, v7}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    move v7, v4

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_4
    :try_start_4
    const-string v5, "BackupManagerService"

    const-string v6, "Unexpected error performing init"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v7, -0x3e8

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportClient;

    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    return-void

    :goto_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/transport/TransportClient;

    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, v5, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    goto :goto_8

    :cond_5
    invoke-direct {v1, v7}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v4, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    throw v0
.end method
