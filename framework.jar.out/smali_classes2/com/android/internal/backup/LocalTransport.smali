.class public Lcom/android/internal/backup/LocalTransport;
.super Landroid/app/backup/BackupTransport;
.source "LocalTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/LocalTransport$DecodedFilename;,
        Lcom/android/internal/backup/LocalTransport$KVOperation;
    }
.end annotation


# static fields
.field private static final CURRENT_SET_TOKEN:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final FULL_BACKUP_SIZE_QUOTA:J = 0x1900000L

.field private static final FULL_DATA_DIR:Ljava/lang/String; = "_full"

.field private static final INCREMENTAL_DIR:Ljava/lang/String; = "_delta"

.field private static final KEY_VALUE_BACKUP_SIZE_QUOTA:J = 0x500000L

.field static final POSSIBLE_SETS:[J

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DATA_MANAGEMENT_LABEL:Ljava/lang/String; = ""

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to debug-only private cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurFullRestoreStream:Ljava/io/FileInputStream;

.field private mCurrentSetDir:Ljava/io/File;

.field private mCurrentSetFullDir:Ljava/io/File;

.field private mCurrentSetIncrementalDir:Ljava/io/File;

.field private mDataDir:Ljava/io/File;

.field private mFullBackupBuffer:[B

.field private mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

.field private mFullBackupSize:J

.field private mFullRestoreBuffer:[B

.field private mFullRestoreSocketStream:Ljava/io/FileOutputStream;

.field private mFullTargetPackage:Ljava/lang/String;

.field private final mParameters:Lcom/android/internal/backup/LocalTransportParameters;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;

.field private mRestoreSetDir:Ljava/io/File;

.field private mRestoreSetFullDir:Ljava/io/File;

.field private mRestoreSetIncrementalDir:Ljava/io/File;

.field private mRestoreType:I

.field private mSocket:Landroid/os/ParcelFileDescriptor;

.field private mSocketInputStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    return-void

    :array_0
    .array-data 8
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/backup/LocalTransportParameters;)V
    .locals 4

    invoke-direct {p0}, Landroid/app/backup/BackupTransport;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    return-void
.end method

.method private contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    invoke-direct {v5, v4}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeDataDirs()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method private parseBackupStream(Landroid/os/ParcelFileDescriptor;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/backup/LocalTransport$KVOperation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    if-ltz v4, :cond_0

    new-array v5, v4, [B

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ltz v4, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    :cond_1
    new-instance v6, Lcom/android/internal/backup/LocalTransport$KVOperation;

    invoke-direct {v6, p0, v3, v5}, Lcom/android/internal/backup/LocalTransport$KVOperation;-><init>(Lcom/android/internal/backup/LocalTransport;Ljava/lang/String;[B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private parseKeySizes(Ljava/io/File;Landroid/util/ArrayMap;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    add-int/2addr v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private resetFullRestoreState()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    return-void
.end method

.method private tarballFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private tearDownFullBackup()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_0
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    throw v1

    :catch_0
    move-exception v1

    const/16 v2, -0x3e8

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 2

    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "abortFullRestore() but not currently restoring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelFullBackup()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public checkFullBackupSize(J)I
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/16 v0, -0x3ea

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x1900000

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    const/16 v0, -0x3ed

    :cond_1
    :goto_0
    nop

    return v0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    return v2
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    const-string v0, "Backing up to debug-only private cache"

    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public finishBackup()I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    move-result v0

    return v0
.end method

.method public finishRestore()V
    .locals 2

    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 11

    sget-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_1

    aget-wide v6, v2, v1

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v8, v5, 0x1

    aput-wide v6, v0, v5

    move v5, v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v5, 0x1

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v5

    new-array v2, v1, [Landroid/app/backup/RestoreSet;

    nop

    :goto_1
    move v3, v4

    array-length v4, v2

    if-ge v3, v4, :cond_2

    new-instance v4, Landroid/app/backup/RestoreSet;

    const-string v5, "Local disk image"

    const-string v6, "flash"

    aget-wide v7, v0, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v4, v2, v3

    add-int/lit8 v4, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/32 v0, 0x1900000

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x500000

    :goto_0
    return-wide v0
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 6

    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    const/16 v2, 0x800

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "LocalTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read archive for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x3ea

    return v3

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "LocalTransport"

    const-string/jumbo v2, "read() of archive file returned 0; treating as EOF"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    nop

    nop

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const/16 v1, -0x3e8

    return v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asked for full restore data for non-stream package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getParameters()Lcom/android/internal/backup/LocalTransportParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    return-object v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 11

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, -0x3e8

    if-nez v1, :cond_0

    const-string v3, "LocalTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No keys for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v3, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    iget-object v6, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v9, v8, [B

    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I

    iget-object v10, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {v3, v9, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    nop

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v4

    const-string v5, "LocalTransport"

    const-string v6, "Unable to read backup records"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getRestoreData(fd) for non-key/value dataset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "nextRestorePackage not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRestore not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransportFlags()I
    .locals 2

    invoke-super {p0}, Landroid/app/backup/BackupTransport;->getTransportFlags()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    invoke-virtual {v1}, Lcom/android/internal/backup/LocalTransportParameters;->isFakeEncryptionFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public initializeDevice()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v1, v1, v3

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    iput v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    new-instance v2, Landroid/app/backup/RestoreDescription;

    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    invoke-direct {v2, v1, v4}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    return-object v2

    :cond_2
    goto :goto_0

    :cond_3
    sget-object v1, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRestore not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/backup/LocalTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    and-int/lit8 v0, p3, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    if-eqz v5, :cond_2

    const-string v0, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing incremental backup for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    const-string v0, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing non-incremental backup for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing backup for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v7, v1, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v0

    xor-int/2addr v0, v3

    move v3, v0

    if-eqz v5, :cond_6

    iget-object v0, v1, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransportParameters;->isNonIncrementalOnly()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v3, :cond_6

    :cond_4
    iget-object v0, v1, Lcom/android/internal/backup/LocalTransport;->mParameters:Lcom/android/internal/backup/LocalTransportParameters;

    invoke-virtual {v0}, Lcom/android/internal/backup/LocalTransportParameters;->isNonIncrementalOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LocalTransport"

    const-string v4, "Transport is in non-incremental only mode."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string v0, "LocalTransport"

    const-string v4, "Requested incremental, but transport currently stores no data for the package, requesting non-incremental retry."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/16 v0, -0x3ee

    return v0

    :cond_6
    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    const-string v0, "LocalTransport"

    const-string v8, "Requested non-incremental, deleting existing data."

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/backup/LocalTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_7
    move-object/from16 v9, p2

    :try_start_0
    invoke-direct {v1, v9}, Lcom/android/internal/backup/LocalTransport;->parseBackupStream(Landroid/os/ParcelFileDescriptor;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v10, v0

    nop

    nop

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v0

    invoke-direct {v1, v7, v11}, Lcom/android/internal/backup/LocalTransport;->parseKeySizes(Ljava/io/File;Landroid/util/ArrayMap;)I

    move-result v12

    move v0, v12

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v0

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/LocalTransport$KVOperation;

    iget-object v8, v0, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v14, v15

    :cond_8
    iget-object v4, v0, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    array-length v4, v4

    add-int/2addr v14, v4

    :cond_9
    goto :goto_4

    :cond_a
    int-to-long v0, v14

    const-wide/32 v16, 0x500000

    cmp-long v0, v0, v16

    if-lez v0, :cond_b

    const/16 v0, -0x3ed

    return v0

    :cond_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/LocalTransport$KVOperation;

    new-instance v4, Ljava/io/File;

    iget-object v8, v1, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v8, v1, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    if-eqz v8, :cond_d

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    iget-object v13, v1, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v8, v13, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v13, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v19, v1

    move-object v1, v0

    const/4 v13, 0x0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v19, v1

    move-object v13, v0

    :goto_6
    :try_start_5
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_7
    if-eqz v13, :cond_c

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v13, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :goto_8
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_4
    move-exception v0

    move-object/from16 v19, v1

    :goto_9
    const-string v1, "LocalTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to update key file "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    return v1

    :cond_d
    move-object/from16 v18, v0

    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v2, p1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    return v0

    :catch_5
    move-exception v0

    move-object v1, v0

    const-string v1, "LocalTransport"

    const-string v2, "Exception reading backup input"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x3e8

    return v1
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    const/16 v1, -0x3e8

    if-eqz v0, :cond_0

    const-string v0, "LocalTransport"

    const-string v2, "Attempt to initiate full backup while one is in progress"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "LocalTransport"

    const-string v3, "Unable to process socket for full backup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public requestBackupTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 6

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    const/16 v1, -0x3e8

    if-nez v0, :cond_0

    const-string v0, "LocalTransport"

    const-string v2, "Attempted sendBackupData before performFullBackup"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    iget-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    const-wide/32 v4, 0x1900000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/16 v0, -0x3ed

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_2

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    :cond_2
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    nop

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    goto :goto_0

    :catch_0
    move-exception v0

    return v1

    :cond_3
    :goto_0
    move v0, p1

    :goto_1
    const/4 v2, 0x0

    if-lez v0, :cond_5

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    invoke-virtual {v3, v4, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_4

    const-string v2, "LocalTransport"

    const-string v4, "Unexpected EOD; failing backup"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    invoke-virtual {v4, v5, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr v0, v3

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "LocalTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error handling backup data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    return v2
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 3

    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
