.class public Lcom/android/server/backup/KeyValueAdbRestoreEngine;
.super Ljava/lang/Object;
.source "KeyValueAdbRestoreEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyValueAdbRestoreEngine"


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

.field private final mDataDir:Ljava/io/File;

.field mInFD:Landroid/os/ParcelFileDescriptor;

.field mInfo:Lcom/android/server/backup/FileMetadata;

.field mRestoreTask:Lcom/android/server/backup/restore/PerformAdbRestoreTask;

.field mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iput p6, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    return-void
.end method

.method private copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    :cond_0
    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-virtual {p2, v3, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v5, v4

    invoke-virtual {p2, v4, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const/high16 v2, 0x3c000000    # 0.0078125f

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iget-wide v5, p2, Lcom/android/server/backup/FileMetadata;->version:J

    iget v8, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    invoke-interface {v2}, Lcom/android/server/backup/BackupManagerServiceInterface;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v9

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "KeyValueAdbRestoreEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception calling doRestore on agent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "KeyValueAdbRestoreEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception opening file. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".restore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".sorted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-wide v5, p1, Lcom/android/server/backup/FileMetadata;->size:J

    iget v7, p1, Lcom/android/server/backup/FileMetadata;->type:I

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-object v4, p2

    move-object v12, v1

    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->sortKeyValueData(Ljava/io/File;Ljava/io/File;)V

    return-object v2
.end method

.method private sortKeyValueData(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    new-instance v2, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v3, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
