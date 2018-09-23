.class Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/fullbackup/FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mPackage:Landroid/content/pm/PackageInfo;

.field mPipe:Landroid/os/ParcelFileDescriptor;

.field mSendApk:Z

.field mToken:I

.field mWidgetData:[B

.field mWriteManifest:Z

.field final synthetic this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iput-boolean p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSendApk:Z

    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Landroid/app/backup/FullBackupDataOutput;

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    const-wide/16 v3, -0x1

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v5}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    iget-boolean v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v4}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v5, v5, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mManifestFile:Ljava/io/File;

    iget-boolean v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSendApk:Z

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/server/backup/utils/FullBackupUtils;->writeAppManifest(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/io/File;ZZ)V

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object v11, v0

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v5, v5, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mMetadataFile:Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$200(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object v11, v0

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    iget-boolean v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mSendApk:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v3, v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$300(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    :cond_2
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.sharedstoragebackup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v3

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    :goto_1
    move-wide v7, v3

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling doFullBackup() on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v5

    iget v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v9, v3, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v11, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v12, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$500(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J

    move-result-wide v13

    iget v15, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v16

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-static {v3}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I

    move-result v17

    invoke-interface/range {v11 .. v17}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote agent vanished during full backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running full backup for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_2
    goto :goto_3

    :catch_2
    move-exception v0

    nop

    :goto_3
    return-void

    :goto_4
    nop

    :try_start_6
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_5
    throw v2
.end method
