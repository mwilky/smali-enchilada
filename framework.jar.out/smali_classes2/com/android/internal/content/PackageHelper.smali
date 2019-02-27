.class public Lcom/android/internal/content/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/PackageHelper$TestableInterface;
    }
.end annotation


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final RECOMMEND_FAILED_INVALID_URI:I = -0x6

.field public static final RECOMMEND_FAILED_VERSION_DOWNGRADE:I = -0x7

.field public static final RECOMMEND_INSTALL_EPHEMERAL:I = 0x3

.field public static final RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final TAG:Ljava/lang/String; = "PackageHelper"

.field private static sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/content/PackageHelper;->sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->getPackageDexMetadataSize(Landroid/content/pm/PackageParser$PackageLite;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {p1, p2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->createFd(Landroid/content/pm/PackageParser$PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    :goto_0
    move-object v0, v1

    invoke-static {p0, v0, p1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v1

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p2, p3}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p2}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 6

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1

    iget-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iget v4, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v4}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static declared-synchronized getDefaultTestableInterface()Lcom/android/internal/content/PackageHelper$TestableInterface;
    .locals 2

    const-class v0, Lcom/android/internal/content/PackageHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/content/PackageHelper;->sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/content/PackageHelper$1;

    invoke-direct {v1}, Lcom/android/internal/content/PackageHelper$1;-><init>()V

    sput-object v1, Lcom/android/internal/content/PackageHelper;->sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;

    :cond_0
    sget-object v1, Lcom/android/internal/content/PackageHelper;->sDefaultTestableInterface:Lcom/android/internal/content/PackageHelper$TestableInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "PackageHelper"

    const-string v2, "Can\'t get storagemanager service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact storagemanager service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replaceEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to end with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/high16 v3, 0x400000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v2, v2, 0x800

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_1
    goto :goto_4

    :cond_0
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-nez v2, :cond_7

    if-eqz v0, :cond_6

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v2, v5

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    :goto_2
    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_3
    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x0

    if-nez v5, :cond_8

    if-ne v2, v4, :cond_9

    :cond_8
    invoke-static {p0, p1}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v6

    :cond_9
    const/4 v7, 0x0

    if-nez v5, :cond_a

    if-ne v2, v3, :cond_b

    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/content/PackageHelper;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v7

    :cond_b
    if-ne v2, v4, :cond_d

    if-eqz v6, :cond_e

    if-eqz v1, :cond_c

    const/4 v4, 0x3

    goto :goto_5

    :cond_c
    nop

    :goto_5
    return v4

    :cond_d
    if-ne v2, v3, :cond_e

    if-eqz v7, :cond_e

    return v3

    :cond_e
    if-eqz v5, :cond_10

    if-eqz v6, :cond_f

    return v4

    :cond_f
    if-eqz v7, :cond_10

    return v3

    :cond_10
    const/4 v3, -0x1

    return v3
.end method

.method public static resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput-wide p3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput p5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/internal/content/PackageHelper;->resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getDefaultTestableInterface()Lcom/android/internal/content/PackageHelper$TestableInterface;

    move-result-object v6

    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iget-wide v3, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object v0, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/PackageHelper$TestableInterface;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/PackageHelper$TestableInterface;)Ljava/lang/String;
    .locals 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getForceAllowOnExternalSetting(Landroid/content/Context;)Z

    move-result v4

    nop

    invoke-virtual {v2, v0}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z

    move-result v5

    iget-object v6, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Lcom/android/internal/content/PackageHelper$TestableInterface;->getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/high16 v10, -0x8000000000000000L

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/VolumeInfo;

    iget v15, v13, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v15, v14, :cond_4

    invoke-virtual {v13}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v15

    if-eqz v15, :cond_4

    const-string/jumbo v15, "private"

    iget-object v14, v13, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    new-instance v15, Ljava/io/File;

    iget-object v0, v13, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v0

    iget v15, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v15}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v15

    invoke-virtual {v3, v0, v15}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v17

    if-eqz v14, :cond_1

    move-object/from16 v19, v3

    iget-wide v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v2, v2, v17

    if-gtz v2, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_1
    move/from16 v8, v16

    goto :goto_2

    :cond_1
    move-object/from16 v19, v3

    :goto_2
    if-eqz v14, :cond_2

    if-eqz v5, :cond_5

    :cond_2
    iget-wide v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v2, v17, v2

    if-ltz v2, :cond_3

    iget-object v2, v13, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    cmp-long v2, v17, v10

    if-ltz v2, :cond_5

    move-object v2, v13

    move-wide/from16 v9, v17

    move-wide v10, v9

    move-object v9, v2

    goto :goto_3

    :cond_4
    move-object/from16 v19, v3

    :cond_5
    :goto_3
    move-object/from16 v3, v19

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    goto :goto_0

    :cond_6
    move-object/from16 v19, v3

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v8, :cond_7

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space on existing volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for system app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " upgrade"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez v4, :cond_d

    iget v0, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    if-eqz v6, :cond_a

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot automatically move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to internal storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    if-eqz v5, :cond_c

    if-eqz v8, :cond_b

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Requested internal only, but not enough space"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not allowed to install non-system apps on internal storage"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-eqz v6, :cond_10

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v8, :cond_e

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    :cond_e
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    return-object v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space on existing volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " upgrade"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-eqz v9, :cond_11

    iget-object v0, v9, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    return-object v0

    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No special requests, but no room on allowed volumes.  allow3rdPartyOnInternal? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/PackageHelper$TestableInterface;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput-wide p3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {p0, v0, p5}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/PackageHelper$TestableInterface;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static translateAllocateFlags(I)I
    .locals 1

    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
