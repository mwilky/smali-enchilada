.class public Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;
.super Ljava/lang/Object;
.source "ActiveRestoreSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/ActiveRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndRestoreRunnable"
.end annotation


# instance fields
.field mBackupManager:Lcom/android/server/backup/BackupManagerService;

.field mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field final synthetic this$0:Lcom/android/server/backup/restore/ActiveRestoreSession;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->this$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/BackupManagerService;

    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
