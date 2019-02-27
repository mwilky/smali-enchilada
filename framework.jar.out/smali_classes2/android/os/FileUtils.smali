.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$MemoryPipe;,
        Landroid/os/FileUtils$ProgressListener;,
        Landroid/os/FileUtils$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final COPY_CHECKPOINT_BYTES:J = 0x80000L

.field private static final EMPTY:[Ljava/io/File;

.field private static final ENABLE_COPY_OPTIMIZATIONS:Z = true

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    const/4 v2, 0x0

    :goto_0
    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method public static buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/os/FileUtils;->splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v3, "Failed to create unique file"

    invoke-direct {v1, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public static buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/os/FileUtils;->isValidExtFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_2
    const-string v0, "(invalid)"

    return-object v0
.end method

.method public static buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/os/FileUtils;->isValidFatFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_2
    const-string v0, "(invalid)"

    return-object v0
.end method

.method public static bytesToFile(Ljava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v1, v2

    const/16 v2, 0x80

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    return-wide v3

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :cond_1
    :goto_2
    throw v2
.end method

.method public static contains(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static contains([Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    nop

    :try_start_1
    invoke-static {v0, v2, p2, p3}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-wide v3

    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_0
    :try_start_4
    invoke-static {v4, v2}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p5}, Landroid/os/FileUtils;->copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J

    move-result-wide v2

    return-wide v2

    :cond_0
    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    nop

    invoke-static/range {p0 .. p5}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_0
    :try_start_1
    invoke-static/range {p0 .. p5}, Landroid/os/FileUtils;->copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J

    move-result-wide v2
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-wide/from16 v5, p4

    move-wide v7, v1

    move-wide v1, v3

    :cond_0
    :goto_0
    const/4 v9, 0x0

    const-wide/32 v10, 0x80000

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-static {v15, v14, v9, v12, v13}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v12

    move-wide/from16 v16, v12

    cmp-long v9, v12, v3

    if-eqz v9, :cond_3

    add-long v7, v7, v16

    add-long v1, v1, v16

    sub-long v5, v5, v16

    cmp-long v9, v1, v10

    if-ltz v9, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, v7, v8}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0, v7, v8}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    :cond_4
    return-wide v7
.end method

.method public static copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .locals 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-wide/from16 v5, p4

    move-wide v7, v1

    move-wide v1, v3

    :cond_0
    :goto_0
    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/32 v13, 0x80000

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    sget v9, Landroid/system/OsConstants;->SPLICE_F_MOVE:I

    sget v11, Landroid/system/OsConstants;->SPLICE_F_MORE:I

    or-int v17, v9, v11

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    move-wide/from16 v18, v13

    move-wide v13, v15

    move/from16 v15, v17

    invoke-static/range {v9 .. v15}, Landroid/system/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v9

    move-wide v11, v9

    cmp-long v9, v9, v3

    if-eqz v9, :cond_3

    add-long/2addr v7, v11

    add-long/2addr v1, v11

    sub-long/2addr v5, v11

    cmp-long v9, v1, v18

    if-ltz v9, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, v7, v8}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0, v7, v8}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    :cond_4
    return-wide v7
.end method

.method public static copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/util/SizedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1, p4, p5}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, v1, p2, p3}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, v1, p2, p3}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;)J
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0x2000

    new-array v4, v4, [B

    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v6

    add-long/2addr v0, v7

    int-to-long v7, v6

    add-long/2addr v2, v7

    const-wide/32 v7, 0x80000

    cmp-long v5, v2, v7

    if-ltz v5, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, v0, v1}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2, v0, v1}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    :cond_4
    return-wide v0
.end method

.method public static copyPermissions(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/system/StructStat;->st_uid:I

    iget v3, v0, Landroid/system/StructStat;->st_gid:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Landroid/os/FileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v0

    nop

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v0

    nop

    :cond_2
    return-object v2
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .locals 8

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static deleteContentsAndDir(Ljava/io/File;)Z
    .locals 1

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static deleteOlderFiles(Ljava/io/File;IJ)Z
    .locals 9

    if-ltz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v1, Landroid/os/FileUtils$1;

    invoke-direct {v1}, Landroid/os/FileUtils$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    move v2, v1

    move v1, p1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v6, v4, p2

    if-lez v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted old file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constraints must be positive or 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUid(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_uid:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2

    sget-object v0, Landroid/os/FileUtils$NoImagePreloadHolder;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidExtFilename(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidExtFilenameChar(C)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidFatFilename(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidFatFilenameChar(C)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x22

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x5c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :cond_1
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v1
.end method

.method public static listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v1
.end method

.method public static listOrEmpty(Ljava/io/File;)[Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1
.end method

.method public static newFileOrNull(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-gtz p1, :cond_c

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-gez p1, :cond_9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_1
    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    move-object v8, v5

    move-object v5, v7

    move-object v7, v8

    if-nez v7, :cond_3

    neg-int v9, p1

    new-array v9, v9, [B

    move-object v7, v9

    :cond_3
    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    move v8, v9

    array-length v9, v7

    if-eq v8, v9, :cond_1

    if-nez v5, :cond_4

    if-gtz v8, :cond_4

    const-string v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_4
    if-nez v5, :cond_5

    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v6, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v9

    :cond_5
    if-lez v8, :cond_6

    const/4 v4, 0x1

    :try_start_2
    array-length v9, v5

    sub-int/2addr v9, v8

    invoke-static {v5, v8, v5, v6, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v5

    sub-int/2addr v9, v8

    invoke-static {v7, v6, v5, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_6
    if-eqz p2, :cond_8

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_8
    :goto_0
    :try_start_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_9
    :try_start_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :cond_a
    invoke-virtual {v1, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_b

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_b
    array-length v8, v5

    if-eq v7, v8, :cond_a

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_c
    :goto_1
    cmp-long v4, v2, v4

    if-lez v4, :cond_e

    if-eqz p1, :cond_d

    int-to-long v4, p1

    cmp-long v4, v2, v4

    if-gez v4, :cond_e

    :cond_d
    long-to-int p1, v2

    :cond_e
    add-int/lit8 v4, p1, 0x1

    :try_start_5
    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_f

    const-string v6, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v6

    :cond_f
    if-gt v5, p1, :cond_10

    :try_start_6
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v6, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v7

    :cond_10
    if-nez p2, :cond_11

    :try_start_7
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v6, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v7

    :cond_11
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4, v6, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v6

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_1
    return-object v0
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static roundStorageSize(J)J
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x1

    :cond_0
    :goto_0
    mul-long v4, v0, v2

    cmp-long v4, v4, p0

    if-gez v4, :cond_1

    const/4 v4, 0x1

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x200

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const-wide/16 v0, 0x1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_0

    :cond_1
    mul-long v4, v0, v2

    return-wide v4
.end method

.method public static setPermissions(Ljava/io/File;III)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static setPermissions(Ljava/io/FileDescriptor;III)I
    .locals 4

    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    :cond_0
    :try_start_1
    invoke-static {p0, p2, p3}, Landroid/system/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :cond_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1

    :catch_1
    move-exception v0

    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchmod(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 4

    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    :cond_0
    :try_start_1
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :cond_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to chown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1

    :catch_1
    move-exception v0

    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to chmod("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1
.end method

.method public static splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    const/4 v2, 0x0

    move-object v3, v0

    goto :goto_2

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_1

    :cond_1
    move-object v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    if-nez v4, :cond_2

    const-string v4, "application/octet-stream"

    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, p1

    move-object v2, v5

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    const-string v2, ""

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static trimFilename(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static trimFilename(Ljava/lang/StringBuilder;I)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    if-le v1, p1, :cond_1

    add-int/lit8 p1, p1, -0x3

    :goto_0
    array-length v1, v0

    if-le v1, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const-string v2, "..."

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method
