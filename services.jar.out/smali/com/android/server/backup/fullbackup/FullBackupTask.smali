.class public abstract Lcom/android/server/backup/fullbackup/FullBackupTask;
.super Ljava/lang/Object;
.source "FullBackupTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;


# direct methods
.method constructor <init>(Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    return-void
.end method


# virtual methods
.method final sendEndBackup()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_0
    :goto_0
    return-void
.end method

.method final sendOnBackupPackage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_0
    :goto_0
    return-void
.end method

.method final sendStartBackup()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_0
    :goto_0
    return-void
.end method
