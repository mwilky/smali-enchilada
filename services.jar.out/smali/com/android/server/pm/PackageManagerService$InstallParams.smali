.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput p13, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 13

    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    move-object v7, v6

    if-nez v7, :cond_1

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    if-eqz v8, :cond_1

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v7, v9

    :cond_1
    const/4 v8, 0x2

    if-eqz v7, :cond_6

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    move v9, v3

    :goto_1
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v3

    :goto_2
    if-eqz v9, :cond_5

    sget-boolean v11, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_4

    if-eqz v10, :cond_5

    :cond_4
    move v3, v4

    nop

    :cond_5
    if-nez v3, :cond_6

    :try_start_1
    invoke-static {v7, p1}, Lcom/android/server/pm/PackageManagerService;->access$4200(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_2
    const-string v8, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Downgrade detected: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x7

    monitor-exit v5

    return v8

    :cond_6
    :goto_3
    if-eqz v6, :cond_e

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_d

    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    if-eqz v2, :cond_7

    const-string v3, "PackageManager"

    const-string v4, "Cannot install update to system app on sdcard"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    monitor-exit v5

    return v3

    :cond_7
    monitor-exit v5

    return v4

    :cond_8
    if-eqz v2, :cond_9

    monitor-exit v5

    return v8

    :cond_9
    if-ne v1, v4, :cond_a

    monitor-exit v5

    return v4

    :cond_a
    if-ne v1, v8, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$4300(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_c

    monitor-exit v5

    return v8

    :cond_c
    monitor-exit v5

    return v4

    :cond_d
    const/4 v3, -0x4

    monitor-exit v5

    return v3

    :cond_e
    :goto_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_f

    return v8

    :cond_f
    iget v3, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    return-void
.end method

.method public handleStartCopy()V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move v6, v0

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move v7, v0

    const/4 v0, 0x0

    const-wide/32 v8, 0x5000000

    invoke-static {}, Lcom/android/server/pm/OemPackageManagerHelper;->getDataFreeSpace()J

    move-result-wide v10

    const/4 v13, -0x1

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    const-string v14, "PackageManager"

    const-string v15, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x13

    goto/16 :goto_6

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    const-string v14, "PackageManager"

    const-string v15, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x13

    goto/16 :goto_6

    :cond_6
    const-wide/32 v14, 0x5000000

    cmp-long v14, v10, v14

    if-gtz v14, :cond_7

    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the the free space of internal partition is "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto/16 :goto_6

    :cond_7
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v3, v14, v15, v4}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v3

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_8

    if-eqz v7, :cond_8

    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pkgLite for install: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v0, :cond_a

    iget v0, v3, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v13, :cond_a

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v4

    nop

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v14

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v0, v13, v12}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v20, 0x0

    add-long v21, v12, v14

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v26, v2

    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v27, v3

    :try_start_2
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v28, v4

    :try_start_3
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v28, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    goto :goto_4

    :catch_3
    move-exception v0

    move/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    :goto_4
    const-string v2, "PackageManager"

    const-string v3, "Failed to free cache"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v27

    :goto_5
    iget v2, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v3, -0x6

    if-ne v2, v3, :cond_9

    const/4 v2, -0x1

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    :cond_9
    move/from16 v2, v26

    goto :goto_6

    :cond_a
    move/from16 v26, v2

    move-object/from16 v27, v3

    move/from16 v2, v26

    move-object/from16 v0, v27

    :goto_6
    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_b

    const/16 v2, -0x13

    goto :goto_7

    :cond_b
    const/4 v4, -0x4

    if-ne v3, v4, :cond_c

    const/4 v2, -0x1

    goto :goto_7

    :cond_c
    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    const/4 v2, -0x4

    goto :goto_7

    :cond_d
    const/4 v4, -0x2

    if-ne v3, v4, :cond_e

    const/4 v2, -0x2

    goto :goto_7

    :cond_e
    const/4 v4, -0x6

    if-ne v3, v4, :cond_f

    const/4 v2, -0x3

    goto :goto_7

    :cond_f
    const/4 v4, -0x5

    if-ne v3, v4, :cond_10

    const/16 v2, -0x14

    goto :goto_7

    :cond_10
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v3

    const/4 v4, -0x7

    if-ne v3, v4, :cond_11

    const/16 v2, -0x19

    goto :goto_7

    :cond_11
    if-nez v5, :cond_15

    if-nez v6, :cond_15

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_7

    :cond_12
    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_13

    const-string v4, "PackageManager"

    const-string v12, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v4, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x19

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_7

    :cond_14
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    :cond_15
    :goto_7
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    if-eqz v0, :cond_16

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OemCompatibilityHelper;

    move-result-object v4

    iget-object v12, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    iget-object v13, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Lcom/android/server/pm/OemCompatibilityHelper;->abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    :cond_16
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v4, v12, :cond_17

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_17
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/high16 v13, 0x10000000

    if-nez v12, :cond_18

    const/4 v12, -0x1

    goto :goto_8

    :cond_18
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    invoke-virtual {v12, v14, v13, v15}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v12

    :goto_8
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-nez v14, :cond_19

    move/from16 v29, v2

    const/4 v2, -0x1

    goto :goto_9

    :cond_19
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    move/from16 v29, v2

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v14, v15, v13, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    :goto_9
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v14, :cond_1a

    const/4 v14, -0x1

    goto :goto_a

    :cond_1a
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v14, v14, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_a
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v15, v15, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v15, :cond_29

    const/4 v15, -0x1

    if-ne v12, v15, :cond_1c

    if-eq v2, v15, :cond_1b

    goto :goto_b

    :cond_1b
    move-object/from16 v35, v0

    move/from16 v39, v2

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move-wide/from16 v33, v8

    move-wide/from16 v36, v10

    goto/16 :goto_11

    :cond_1c
    :goto_b
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    move/from16 v30, v5

    iget v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-static {v15, v13, v5, v14}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;III)Z

    move-result v5

    if-eqz v5, :cond_28

    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x10000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v13, Ljava/io/File;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    const-string v15, "application/vnd.android.package-archive"

    invoke-virtual {v5, v13, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "application/vnd.android.package-archive"

    const/16 v20, 0x0

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v17, v13

    move-object/from16 v18, v5

    invoke-static/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v13

    sget-boolean v15, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    if-eqz v15, :cond_1d

    const-string v15, "PackageManager"

    move/from16 v31, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v7

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " verifiers for intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " optional verifiers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_1d
    move/from16 v31, v6

    move/from16 v32, v7

    :goto_c
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$4808(Lcom/android/server/pm/PackageManagerService;)I

    move-result v6

    const-string v7, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    iget v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    iget-object v15, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    iget v15, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    move-wide/from16 v33, v8

    invoke-virtual {v0}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v7, :cond_21

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v7, :cond_1e

    const-string v7, "android.intent.extra.ORIGINATING_URI"

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1e
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v7, :cond_1f

    const-string v7, "android.intent.extra.REFERRER"

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1f
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v7, :cond_20

    const-string v7, "android.intent.extra.ORIGINATING_UID"

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_20
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v7, :cond_21

    const-string v7, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_21
    new-instance v7, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v7, v12, v3}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8, v0, v13, v7}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v9

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v15}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v27

    if-eqz v8, :cond_24

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_22

    move-object/from16 v35, v0

    const-string v0, "PackageManager"

    move-wide/from16 v36, v10

    const-string v10, "Additional verifiers required, but none installed."

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x16

    move-object/from16 v38, v8

    goto :goto_f

    :cond_22
    move-object/from16 v35, v0

    move-wide/from16 v36, v10

    const/16 v16, 0x0

    :goto_d
    move/from16 v0, v16

    if-ge v0, v15, :cond_23

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x0

    const-string/jumbo v24, "package verifier"

    move-object/from16 v17, v9

    move-wide/from16 v20, v27

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v11, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v38, v8

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v16, v0, 0x1

    move-object/from16 v8, v38

    goto :goto_d

    :cond_23
    move-object/from16 v38, v8

    goto :goto_e

    :cond_24
    move-object/from16 v35, v0

    move-object/from16 v38, v8

    move-wide/from16 v36, v10

    :goto_e
    move/from16 v0, v29

    :goto_f
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-eqz v8, :cond_26

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v11, "com.qualcomm.qti.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "application/vnd.android.package-archive"

    const/16 v20, 0x0

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v17, v11

    move-object/from16 v18, v8

    invoke-static/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v11

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    invoke-static {v15, v10, v11}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageVerificationState;->addOptionalVerifier(I)V

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v15, :cond_25

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v39, v2

    const-string v2, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v15, v8, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_10

    :cond_25
    move/from16 v39, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v21, "android.permission.PACKAGE_VERIFICATION_AGENT"

    new-instance v15, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    invoke-direct {v15, v1, v6}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v4

    move-object/from16 v22, v15

    invoke-virtual/range {v18 .. v26}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    goto :goto_10

    :cond_26
    move/from16 v39, v2

    :goto_10
    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-static {v2, v8, v13}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    const-wide/32 v10, 0x40000

    const-string/jumbo v8, "verification"

    invoke-static {v10, v11, v8, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x0

    const-string/jumbo v24, "package verifier"

    move-object/from16 v17, v9

    move-object/from16 v19, v8

    move-wide/from16 v20, v27

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v21, "android.permission.PACKAGE_VERIFICATION_AGENT"

    new-instance v10, Lcom/android/server/pm/PackageManagerService$InstallParams$2;

    invoke-direct {v10, v1, v6}, Lcom/android/server/pm/PackageManagerService$InstallParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v8

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    move-object/from16 v22, v10

    invoke-virtual/range {v18 .. v26}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    :cond_27
    goto :goto_12

    :cond_28
    move-object/from16 v35, v0

    move/from16 v39, v2

    move/from16 v31, v6

    move/from16 v32, v7

    move-wide/from16 v33, v8

    move-wide/from16 v36, v10

    goto :goto_11

    :cond_29
    move-object/from16 v35, v0

    move/from16 v39, v2

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move-wide/from16 v33, v8

    move-wide/from16 v36, v10

    :goto_11
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v2

    move v0, v2

    goto :goto_12

    :cond_2a
    move-object/from16 v35, v0

    move/from16 v29, v2

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move-wide/from16 v33, v8

    move-wide/from16 v36, v10

    move/from16 v0, v29

    :goto_12
    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
