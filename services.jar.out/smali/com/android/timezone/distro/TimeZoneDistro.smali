.class public final Lcom/android/timezone/distro/TimeZoneDistro;
.super Ljava/lang/Object;
.source "TimeZoneDistro.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final DISTRO_VERSION_FILE_NAME:Ljava/lang/String; = "distro_version"

.field public static final FILE_NAME:Ljava/lang/String; = "distro.zip"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field private static final MAX_GET_ENTRY_CONTENTS_SIZE:J = 0x20000L

.field public static final TZDATA_FILE_NAME:Ljava/lang/String; = "tzdata"

.field public static final TZLOOKUP_FILE_NAME:Ljava/lang/String; = "tzlookup.xml"


# instance fields
.field private final inputStream:Ljava/io/InputStream;


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

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/timezone/distro/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    nop

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    move v8, v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v6}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    if-eqz p2, :cond_3

    invoke-static {v5}, Lcom/android/timezone/distro/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_2
    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v8, v2

    goto :goto_3

    :catch_0
    move-exception v7

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_3
    :try_start_4
    invoke-static {v8, v6}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    invoke-static {v2, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_4
    invoke-static {v2, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const-wide/32 v6, 0x20000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    const/16 v4, 0x2000

    new-array v4, v4, [B

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    move v7, v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v5}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v6

    :catchall_0
    move-exception v6

    move-object v7, v1

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    :try_start_4
    invoke-static {v7, v5}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6

    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " too large: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    nop

    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_2
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public extractTo(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    return-void
.end method

.method public getDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const-string v1, "distro_version"

    invoke-static {v0, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    const-string v2, "Distro version file entry not found"

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
