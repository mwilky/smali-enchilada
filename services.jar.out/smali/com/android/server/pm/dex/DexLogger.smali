.class public Lcom/android/server/pm/dex/DexLogger;
.super Ljava/lang/Object;
.source "DexLogger.java"

# interfaces
.implements Lcom/android/server/pm/dex/DexManager$Listener;


# static fields
.field private static final DCL_SUBTAG:Ljava/lang/String; = "dcl"

.field private static final SNET_TAG:I = 0x534e4554

.field private static final TAG:Ljava/lang/String; = "DexLogger"


# instance fields
.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/DexLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    iput-object p2, p0, Lcom/android/server/pm/dex/DexLogger;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object p3, p0, Lcom/android/server/pm/dex/DexLogger;->mInstallLock:Ljava/lang/Object;

    return-void
.end method

.method public static getListener(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)Lcom/android/server/pm/dex/DexManager$Listener;
    .locals 1

    new-instance v0, Lcom/android/server/pm/dex/DexLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/dex/DexLogger;-><init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public onReconcileSecondaryDexFile(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Ljava/lang/String;I)V
    .locals 11

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/pm/dex/DexLogger;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/dex/DexLogger;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object v1, p3

    move v3, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    move-object v7, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DexLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got InstallerException when hashing dex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v1

    array-length v2, v7

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v6, v1}, Lcom/android/server/pm/dex/DexLogger;->writeDclEvent(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_2
    iget-object v8, p0, Lcom/android/server/pm/dex/DexLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v10

    invoke-interface {v8, v5, v9, v10}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    if-eq v8, v6, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    goto :goto_2

    :catch_1
    move-exception v8

    :goto_2
    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v1}, Lcom/android/server/pm/dex/DexLogger;->writeDclEvent(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    return-void

    :goto_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method writeDclEvent(ILjava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dcl"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method
