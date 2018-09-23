.class public Lcom/android/server/backup/utils/FullBackupUtils;
.super Ljava/lang/Object;
.source "FullBackupUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const v2, 0x8000

    new-array v2, v2, [B

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v4, v3

    if-lez v3, :cond_3

    :goto_0
    if-lez v4, :cond_0

    array-length v3, v2

    if-le v4, v3, :cond_1

    array-length v3, v2

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {p1, v2, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v4, v6

    goto :goto_0

    :cond_2
    const-string v5, "BackupManagerService"

    const-string v7, "Unexpectedly reached end of file while reading data"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    :cond_3
    return-void
.end method

.method public static writeAppManifest(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/io/File;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Landroid/util/StringBuilderPrinter;

    invoke-direct {v1, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v1, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v3, "1"

    goto :goto_1

    :cond_1
    const-string v3, "0"

    :goto_1
    invoke-virtual {v1, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v3, :cond_2

    const-string v4, "0"

    invoke-virtual {v1, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    array-length v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method
