.class public Lcom/android/server/SystemUpdateManagerService;
.super Landroid/os/ISystemUpdateManager$Stub;
.source "SystemUpdateManagerService.java"


# static fields
.field private static final INFO_FILE:Ljava/lang/String; = "system-update-info.xml"

.field private static final INFO_FILE_VERSION:I = 0x0

.field private static final KEY_BOOT_COUNT:Ljava/lang/String; = "boot-count"

.field private static final KEY_INFO_BUNDLE:Ljava/lang/String; = "info-bundle"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "SystemUpdateManagerService"

.field private static final TAG_INFO:Ljava/lang/String; = "info"

.field private static final UID_UNKNOWN:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFile:Landroid/util/AtomicFile;

.field private mLastStatus:I

.field private mLastUid:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/os/ISystemUpdateManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system-update-info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getBootCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private loadSystemUpdateInfoLocked()Landroid/os/Bundle;
    .locals 8

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/SystemUpdateManagerService;->readInfoFileLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Failed to read the info file:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Failed to parse the info file:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v2, "SystemUpdateManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing info file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    nop

    :goto_3
    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "version"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Invalid info file (invalid version). Ignored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    :cond_4
    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_5

    const-string v2, "SystemUpdateManagerService"

    const-string v4, "Invalid info file (invalid UID). Ignored"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    :cond_5
    const-string v4, "boot-count"

    invoke-virtual {v1, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_9

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v2

    if-eq v4, v2, :cond_6

    goto :goto_4

    :cond_6
    const-string/jumbo v2, "info-bundle"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v5, "SystemUpdateManagerService"

    const-string v6, "Invalid info file (missing info). Ignored"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v5

    return-object v5

    :cond_7
    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_8

    const-string v6, "SystemUpdateManagerService"

    const-string v7, "Invalid info file (invalid status). Ignored"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v6

    return-object v6

    :cond_8
    iput v5, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    iput v3, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v6

    :cond_9
    :goto_4
    const-string v2, "SystemUpdateManagerService"

    const-string v5, "Outdated info file. Ignored"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method private readInfoFileLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const-string/jumbo v0, "info"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SystemUpdateManagerService"

    const-string v1, "Removing info file"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "info-bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "boot-count"

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/SystemUpdateManagerService;->writeInfoFileLocked(Landroid/os/PersistableBundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput p2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    :cond_0
    return-void
.end method

.method private writeInfoFileLocked(Landroid/os/PersistableBundle;)Z
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "info"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "info"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Failed to save the info file:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public retrieveSystemUpdateInfo()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYSTEM_UPDATE_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECOVERY"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t read system update info. Requiring READ_SYSTEM_UPDATE_INFO or RECOVERY permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const-string v2, "SystemUpdateManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "SystemUpdateManagerService"

    const-string v2, "Invalid status info. Ignored"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    if-eq v2, v1, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Inactive updater reporting IDLE status. Ignored"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/SystemUpdateManagerService;->saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V

    monitor-exit v2

    :goto_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
