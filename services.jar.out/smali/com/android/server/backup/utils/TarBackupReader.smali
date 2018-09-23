.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# static fields
.field private static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field private static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field private static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field private static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field private static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field private static final TAR_HEADER_LONG_RADIX:I = 0x8

.field private static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field private static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field private static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field private static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field private static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field private static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c


# instance fields
.field private final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field private final mInputStream:Ljava/io/InputStream;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iput-object p3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method private static extractLine([BI[Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    if-ge p1, v0, :cond_2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, p1

    invoke-direct {v3, p0, p1, v4}, Ljava/lang/String;-><init>([BII)V

    aput-object v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extractRadix([BIII)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    add-int v2, p1, p2

    move-wide v3, v0

    move v0, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-byte v1, p0, v0

    if-eqz v1, :cond_2

    const/16 v5, 0x20

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x30

    if-lt v1, v5, :cond_1

    add-int/2addr v5, p3

    add-int/lit8 v5, v5, -0x1

    if-gt v1, v5, :cond_1

    int-to-long v5, p3

    mul-long/2addr v5, v3

    add-int/lit8 v7, v1, -0x30

    int-to-long v7, v7

    add-long v3, v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    :goto_1
    return-wide v3
.end method

.method private static extractString([BII)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p1, p2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p1

    const-string v4, "US-ASCII"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private static hexLog([B)V
    .locals 10

    const/4 v0, 0x0

    array-length v1, p0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-lez v1, :cond_2

    const-string v3, "%04x   "

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    if-le v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    move v5, v7

    :goto_2
    if-ge v5, v3, :cond_1

    const-string v6, "%02x "

    new-array v8, v4, [Ljava/lang/Object;

    add-int v9, v0, v5

    aget-byte v9, p0, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v4, "hexdump"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int/2addr v1, v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static readExactly(Ljava/io/InputStream;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v2, 0x1ff

    add-long/2addr v0, v2

    const/16 v2, 0x9

    shr-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit16 v1, v0, 0x200

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    array-length v3, v1

    int-to-long v5, v3

    invoke-interface {v2, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    nop

    :cond_0
    move v3, v4

    add-int/lit8 v4, v3, 0x1

    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, v1, v4

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-ge v4, v2, :cond_6

    sub-int v5, v4, v3

    const/16 v6, 0xa

    invoke-static {v1, v3, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v6, v4, 0x1

    add-int v7, v3, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    add-int/lit8 v4, v6, 0x1

    :goto_1
    aget-byte v9, v1, v4

    const/16 v10, 0x3d

    if-eq v9, v10, :cond_2

    if-gt v4, v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-gt v4, v7, :cond_5

    new-instance v9, Ljava/lang/String;

    sub-int v10, v4, v6

    const-string v11, "UTF-8"

    invoke-direct {v9, v1, v6, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v10, Ljava/lang/String;

    add-int/lit8 v11, v4, 0x1

    sub-int v12, v7, v4

    sub-int/2addr v12, v8

    const-string v13, "UTF-8"

    invoke-direct {v10, v1, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string/jumbo v11, "path"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iput-object v10, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string/jumbo v11, "size"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_2

    :cond_4
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unhandled pax key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int v4, v3, v5

    if-lt v4, v2, :cond_0

    return v8

    :cond_5
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid pax declaration"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid pax data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to read full pax header"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspiciously large pax header size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " - aborting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanity failure: pax header size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTarHeader([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v2, 0x200

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v1, 0x1

    return v1

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/backup/restore/RestorePolicy;
    .locals 10

    if-nez p4, :cond_0

    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v4, 0x8000000

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const v5, 0x8000

    and-int/2addr v5, v4

    if-eqz v5, :cond_7

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is system level with no agent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x26

    const/4 v7, 0x2

    invoke-static {v5, v6, v3, v7, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_1

    :cond_2
    :goto_0
    invoke-static {p4, v3, p5}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    const-string v5, "BackupManagerService"

    const-string v6, "Package has restoreAnyVersion; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x22

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    iget-wide v7, p3, Lcom/android/server/backup/FileMetadata;->version:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    const-string v5, "BackupManagerService"

    const-string v6, "Sig + version match; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x23

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " is newer than installed version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " - requiring apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    goto/16 :goto_1

    :cond_5
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data requires newer version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x24

    const-string v7, "android.app.backup.extra.LOG_OLD_VERSION"

    iget-wide v8, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-static {v2, v7, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v5, v6, v3, v1, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    move-object v0, v5

    goto :goto_1

    :cond_6
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore manifest signatures do not match installed application for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x25

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_1

    :cond_7
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore manifest from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " but allowBackup=false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x27

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_3

    :catch_0
    move-exception v3

    if-eqz p2, :cond_8

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not installed; requiring apk in dataset"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    :goto_2
    const-string v4, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    invoke-static {v4, v5, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x28

    invoke-static {v5, v6, v2, v1, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :goto_3
    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v0, v3, :cond_9

    iget-boolean v3, p3, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    if-nez v3, :cond_9

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot restore package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " without the matching .apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0x29

    const-string v5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :cond_9
    return-object v0
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object v0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    move v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v7

    move v4, v7

    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v1, :cond_4

    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v1

    move v4, v1

    aget-object v1, v2, v3

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p1, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    aget-object v8, v2, v3

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    iput-object v8, p1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    aget-object v8, v2, v3

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    move v4, v8

    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    new-array v9, v8, [Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move v10, v4

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_1

    :try_start_1
    invoke-static {v0, v10, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    move v10, v11

    new-instance v11, Landroid/content/pm/Signature;

    aget-object v12, v2, v3

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    move v4, v10

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move v4, v10

    goto/16 :goto_4

    :cond_1
    return-object v9

    :cond_2
    :try_start_2
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing signature on backed-up package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2a

    const-string v10, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v6, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v3, v9, v6, v5, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_2

    :cond_3
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " but restore manifest claims "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v6, v3, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v8, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    invoke-static {v3, v8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v3, v8

    iget-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2b

    invoke-static {v8, v9, v6, v5, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :goto_2
    goto :goto_5

    :cond_4
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown restore manifest version "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for package "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v6, v1, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v8, v7

    invoke-static {v1, v3, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v8, 0x2c

    invoke-static {v3, v8, v6, v5, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    :goto_3
    const-string v3, "BackupManagerService"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v1

    :goto_4
    const-string v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Corrupt restore manifest for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x2e

    const-string v8, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v3, v7, v6, v5, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :goto_5
    nop

    :goto_6
    return-object v6

    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF in manifest"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore manifest too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v1

    int-to-long v1, v1

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v1, v4, v5}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v5, v1, :cond_4

    invoke-static {v0, v4, v2}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    aget-object v1, v2, v3

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/ByteArrayInputStream;

    array-length v6, v0

    sub-int/2addr v6, v4

    invoke-direct {v3, v0, v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const/high16 v9, 0x10000

    if-gt v8, v9, :cond_1

    const v9, 0x1ffed01

    if-eq v7, v9, :cond_0

    const-string v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring metadata blob "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_1

    :cond_0
    new-array v9, v8, [B

    iput-object v9, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    iget-object v9, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    invoke-virtual {v6, v9}, Ljava/io/DataInputStream;->read([B)I

    nop

    :goto_1
    goto :goto_0

    :cond_1
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Datum "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " too big; corrupt? size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    goto :goto_2

    :cond_3
    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Metadata mismatch: package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " but widget data for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v8, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v7, v3, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v8, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    invoke-static {v3, v8, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v9, 0x2f

    invoke-static {v8, v9, v7, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :goto_2
    goto :goto_3

    :cond_4
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported metadata version "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v7, v1, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v8, v5

    invoke-static {v1, v3, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v8, 0x30

    invoke-static {v3, v8, v7, v6, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :goto_3
    return-void

    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF in widget data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata too big; corrupt? size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v2

    if-eqz v2, :cond_d

    :try_start_0
    new-instance v3, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v3}, Lcom/android/server/backup/FileMetadata;-><init>()V

    move-object v1, v3

    const/16 v3, 0x7c

    const/16 v4, 0xc

    const/16 v5, 0x8

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/backup/FileMetadata;->size:J

    const/16 v3, 0x88

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/backup/FileMetadata;->mtime:J

    const/16 v3, 0x64

    invoke-static {v0, v3, v5, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/backup/FileMetadata;->mode:J

    const/16 v4, 0x159

    const/16 v5, 0x9b

    invoke-static {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2f

    if-lez v5, :cond_1

    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :cond_1
    const/16 v5, 0x9c

    aget-byte v7, v0, v5

    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v8

    move v2, v8

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v8

    move v2, v8

    :cond_2
    if-eqz v2, :cond_3

    aget-byte v5, v0, v5

    move v7, v5

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Bad or missing pax header"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    :goto_0
    if-eqz v7, :cond_c

    const/16 v5, 0x30

    if-eq v7, v5, :cond_6

    const/16 v5, 0x35

    if-ne v7, v5, :cond_5

    const/4 v5, 0x2

    iput v5, v1, Lcom/android/server/backup/FileMetadata;->type:I

    iget-wide v8, v1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_7

    const-string v5, "BackupManagerService"

    const-string v8, "Directory entry with nonzero size in header"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, v1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_1

    :cond_5
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tar entity type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown entity type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    const/4 v5, 0x1

    iput v5, v1, Lcom/android/server/backup/FileMetadata;->type:I

    nop

    :cond_7
    :goto_1
    const-string/jumbo v5, "shared/"

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v4, v8, v4, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v5, "shared/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v4, "com.android.sharedstoragebackup"

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "shared"

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File in shared storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    const-string v5, "apps/"

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v4, v8, v4, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v8, "apps/"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_a

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v5, v6

    if-ltz v5, :cond_9

    iget-object v6, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_2

    :cond_9
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in non-manifest "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal semantic path in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_2
    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    return-object v4

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse error in header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    :cond_d
    :goto_3
    return-object v1
.end method

.method public skipTarPadding(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x200

    add-long v2, p1, v0

    rem-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    long-to-int v0, v2

    rsub-int v0, v0, 0x200

    new-array v1, v0, [B

    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v5, v0

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    return-void
.end method
