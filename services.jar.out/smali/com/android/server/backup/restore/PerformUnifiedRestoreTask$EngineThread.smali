.class Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;
.super Ljava/lang/Object;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EngineThread"
.end annotation


# instance fields
.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEngineStream:Ljava/io/FileInputStream;

.field final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public handleTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->handleTimeout()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 9

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v5, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-boolean v6, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget v7, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v8, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public waitForResult()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->waitForResult()I

    move-result v0

    return v0
.end method
