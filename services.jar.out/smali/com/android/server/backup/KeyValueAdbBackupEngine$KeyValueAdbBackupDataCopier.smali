.class Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
.super Ljava/lang/Object;
.source "KeyValueAdbBackupEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/KeyValueAdbBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyValueAdbBackupDataCopier"
.end annotation


# instance fields
.field private final mPackage:Landroid/content/pm/PackageInfo;

.field private final mPipe:Landroid/os/ParcelFileDescriptor;

.field private final mToken:I

.field final synthetic this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/KeyValueAdbBackupEngine;Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    iput p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mToken:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    new-instance v5, Landroid/app/backup/FullBackupDataOutput;

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v5, v0}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$000(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$100(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/server/backup/utils/FullBackupUtils;->writeAppManifest(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/io/File;ZZ)V

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "k"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v3}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$200(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v4}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$100(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$100(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "k"

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$200(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$300(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "KeyValueAdbBackupEngine"

    const-string v2, "Unable to finalize backup stream!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->this$0:Lcom/android/server/backup/KeyValueAdbBackupEngine;

    invoke-static {v0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->access$400(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mToken:I

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_4
    const-string v1, "KeyValueAdbBackupEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running full backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_2
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method
