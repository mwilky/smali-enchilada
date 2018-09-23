.class public Lcom/android/server/backup/Trampoline;
.super Landroid/app/backup/IBackupManager$Stub;
.source "Trampoline.java"


# static fields
.field static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field static final DEBUG_TRAMPOLINE:Z = false

.field static final TAG:Ljava/lang/String; = "BackupManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mGlobalDisable:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field volatile mService:Lcom/android/server/backup/BackupManagerServiceInterface;

.field final mSuppressFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->isBackupDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->getSuppressFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static synthetic lambda$unlockSystemUser$0(Lcom/android/server/backup/Trampoline;)V
    .locals 4

    const-string v0, "backup init"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking system user; mService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->unlockSystemUser()V

    :cond_0
    return-void
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v6, :cond_0

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerServiceInterface;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    :cond_0
    return-void
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    iget-object v12, v0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v12, :cond_0

    move-object v1, v12

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/android/server/backup/BackupManagerServiceInterface;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    :cond_0
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->agentDisconnected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public backupNow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->backupNow()V

    :cond_0
    return-void
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected binderGetCallingUid()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public cancelBackups()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->cancelBackups()V

    :cond_0
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0, p0, v1}, Lcom/android/server/backup/BackupManagerService;->create(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    return-object v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->dataChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerServiceInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Inactive"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method endFullBackup()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->endFullBackup()V

    :cond_0
    return-void
.end method

.method public filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->fullTransportBackup([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected getSuppressFile()Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "backup-suppress"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hasBackupPassword()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->hasBackupPassword()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public initialize(I)V
    .locals 3

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v0, :cond_0

    const-string v0, "BackupManagerService"

    const-string v1, "Backup/restore not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    goto :goto_0

    :cond_1
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup inactive in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    :cond_0
    return-void
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isBackupDisabled()Z
    .locals 2

    const-string/jumbo v0, "ro.backup.disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackupEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->isBackupEnabled()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBackupServiceActive(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return v0
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public opComplete(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerServiceInterface;->opComplete(IJ)V

    :cond_0
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-nez v0, :cond_0

    const/16 v1, -0x7d1

    return v1

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerServiceInterface;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v1

    return v1
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->restoreAtInstall(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/16 v1, -0x7d1

    :try_start_0
    invoke-interface {p2, v1}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoRestore(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setAutoRestore(Z)V

    :cond_0
    return-void
.end method

.method public setBackupEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackupProvisioned(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupProvisioned(Z)V

    :cond_0
    return-void
.end method

.method public setBackupServiceActive(IZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No permission to configure backup activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v1, :cond_2

    const-string v1, "BackupManagerService"

    const-string v2, "Backup/restore not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez p1, :cond_6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->isBackupServiceActive(I)Z

    move-result v1

    if-eq p2, v1, :cond_5

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "in"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "active in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service inactivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_6
    :goto_3
    return-void
.end method

.method unlockSystemUser()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "backup"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/backup/-$$Lambda$Trampoline$zhmxdOntlNYAyF3FWA7uhVoZeFI;

    invoke-direct {v1, p0}, Lcom/android/server/backup/-$$Lambda$Trampoline$zhmxdOntlNYAyF3FWA7uhVoZeFI;-><init>(Lcom/android/server/backup/Trampoline;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    iget-object v7, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v7, :cond_0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerServiceInterface;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
