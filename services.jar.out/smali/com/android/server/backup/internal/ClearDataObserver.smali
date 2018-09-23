.class public Lcom/android/server/backup/internal/ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ClearDataObserver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->setClearingData(Z)V

    iget-object v1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
