.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 19
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 16667
    move-object/from16 v0, p2

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iput-object v14, v15, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16668
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16670
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceMethod:Ljava/lang/String;

    iget v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceCookie:I

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 16668
    const/16 v16, 0x0

    move/from16 v17, v1

    move-object v1, v15

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    move-object/from16 v14, v18

    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;I)V

    .line 16674
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16677
    return-void

    .line 16675
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Forward locking only supported in ASEC"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 20
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "resourcePath"    # Ljava/lang/String;
    .param p4, "instructionSets"    # [Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    .line 16680
    move-object/from16 v12, p1

    iput-object v12, v15, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16681
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    sget-object v16, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v15

    move-object/from16 v8, p4

    move/from16 v12, v17

    move-object/from16 v13, v16

    move-object v15, v14

    move/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;I)V

    .line 16684
    const/4 v0, 0x0

    if-eqz v15, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16685
    move-object/from16 v1, p3

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    :cond_1
    iput-object v0, v2, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16686
    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    .line 16655
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    return-object v0
.end method

.method private cleanUp()Z
    .locals 6

    .line 16926
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16932
    :cond_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5400()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16933
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/OemPackageManagerHelper;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16935
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 16936
    .local v0, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    new-instance v3, Ljava/io/File;

    .line 16937
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5500()Ljava/io/File;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16936
    invoke-static {v3, v2}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16938
    return v2

    .line 16939
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v0

    .line 16940
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 16941
    return v1

    .line 16946
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 16948
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16949
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 16952
    :cond_2
    return v2

    .line 16927
    :cond_3
    :goto_0
    return v1
.end method

.method private doCopyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 8
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16700
    const/4 v0, 0x0

    move-object v1, v0

    .line 16702
    .local v1, "pkgLite":Landroid/content/pm/PackageInfoLite;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 16703
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 16702
    invoke-interface {p1, v3, v2, v0}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 16706
    goto :goto_0

    .line 16704
    :catch_0
    move-exception v3

    .line 16705
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while getMinimalPackageInfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16707
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 16708
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5020019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$5102(Lcom/android/server/pm/PackageManagerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 16712
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 16713
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_1

    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already staged; skipping copy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16714
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16715
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16722
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16723
    const/4 v0, 0x1

    .line 16724
    .local v0, "ret":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApkTheme(Lcom/android/internal/app/IMediaContainerService;I)I

    .line 16725
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCheckOpSdk(Landroid/content/pm/PackageInfoLite;I)I

    move-result v0

    .line 16726
    return v0

    .line 16728
    .end local v0    # "ret":I
    :cond_2
    return v4

    .line 16734
    :cond_3
    :try_start_1
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installFlags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4

    move v2, v4

    nop

    .line 16735
    .local v2, "isEphemeral":Z
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->volumeUuid:Ljava/lang/String;

    .line 16736
    invoke-virtual {v3, v5, v2}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    .line 16737
    .local v3, "tempDir":Ljava/io/File;
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16738
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 16742
    .end local v2    # "isEphemeral":Z
    .end local v3    # "tempDir":Ljava/io/File;
    nop

    .line 16744
    new-instance v2, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$1;-><init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V

    .line 16762
    .local v2, "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    const/4 v3, 0x1

    .line 16763
    .local v3, "ret":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v2}, Lcom/android/internal/app/IMediaContainerService;->copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v3

    .line 16764
    if-eq v3, v4, :cond_5

    .line 16765
    const-string v0, "PackageManager"

    const-string v4, "Failed to copy package"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16766
    return v3

    .line 16769
    :cond_5
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const-string/jumbo v6, "lib"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16770
    .local v4, "libraryRoot":Ljava/io/File;
    nop

    .line 16772
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v5

    move-object v0, v5

    .line 16773
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->abiOverride:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v5

    .line 16779
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 16780
    goto :goto_2

    .line 16779
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 16775
    :catch_1
    move-exception v5

    .line 16776
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    const-string v6, "PackageManager"

    const-string v7, "Copying native libraries failed"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16777
    const/16 v3, -0x6e

    .line 16777
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 16784
    :goto_2
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 16785
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApkTheme(Lcom/android/internal/app/IMediaContainerService;I)I

    .line 16786
    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCheckOpSdk(Landroid/content/pm/PackageInfoLite;I)I

    move-result v3

    .line 16789
    :cond_6
    return v3

    .line 16779
    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 16739
    .end local v0    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v2    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .end local v3    # "ret":I
    .end local v4    # "libraryRoot":Ljava/io/File;
    :catch_2
    move-exception v0

    .line 16740
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create copy file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16741
    const/4 v2, -0x4

    return v2
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 4

    .line 16957
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16958
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16960
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 16961
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 16964
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$5400()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16965
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/OemPackageManagerHelper;->isReserveApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16966
    iget-object v2, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget v3, v1, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-static {v2, v3}, Lcom/android/server/pm/OemPackageManagerHelper;->putDeletedAppNameinList(Ljava/lang/String;I)V

    .line 16968
    invoke-static {}, Lcom/android/server/pm/OemPackageManagerHelper;->writeDeletedReserveAppsToXML()V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16974
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    goto :goto_0

    .line 16972
    :catch_0
    move-exception v1

    .line 16977
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16978
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->instructionSets:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V

    .line 16979
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 3
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16689
    const-string v0, "copyApk"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16691
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16693
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 16691
    return v0

    .line 16693
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method doCheckOpSdk(Landroid/content/pm/PackageInfoLite;I)I
    .locals 3
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "ret"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16832
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkgLite.oplibDependencyStr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16833
    const-string v0, ""

    iget-object v1, p1, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16834
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16835
    const/16 p2, -0xc

    .line 16836
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to install, required OnePlus SDK : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16837
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x50c002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 16840
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 16843
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return p2
.end method

.method doCopyApkTheme(Lcom/android/internal/app/IMediaContainerService;I)I
    .locals 5
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "ret"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16795
    new-instance v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs$2;-><init>(Lcom/android/server/pm/PackageManagerService$FileInstallArgs;)V

    .line 16818
    .local v0, "themesTarget":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/android/internal/app/IMediaContainerService;->copyPackageThemes(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v1

    .line 16822
    goto :goto_0

    .line 16819
    :catch_0
    move-exception v1

    .line 16821
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PackageManager"

    const-string v3, "Exception happened while copying themes from APK: "

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16824
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 16825
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy package themes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16827
    :cond_0
    return p2
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .param p1, "delete"    # Z

    .line 16983
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 16984
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .line 16909
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 16910
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16912
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .param p1, "status"    # I

    .line 16848
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 16849
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16851
    :cond_0
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 8
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .line 16855
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 16856
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16857
    return v1

    .line 16860
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 16861
    .local v2, "targetDir":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16862
    .local v3, "beforeCodeFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/android/server/pm/PackageManagerService;->access$5300(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 16864
    .local v4, "afterCodeFile":Ljava/io/File;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v5, :cond_1

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Renaming "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16866
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16870
    nop

    .line 16872
    invoke-static {v4}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 16873
    const-string v0, "PackageManager"

    const-string v5, "Failed to restorecon"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16874
    return v1

    .line 16878
    :cond_2
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 16879
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 16883
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16887
    nop

    .line 16888
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 16890
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setSplitCodePaths([Ljava/lang/String;)V

    .line 16894
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 16895
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoCodePath(Ljava/lang/String;)V

    .line 16896
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseCodePath(Ljava/lang/String;)V

    .line 16897
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitCodePaths([Ljava/lang/String;)V

    .line 16898
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoResourcePath(Ljava/lang/String;)V

    .line 16899
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseResourcePath(Ljava/lang/String;)V

    .line 16900
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V

    .line 16903
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/android/server/pm/PackageManagerService;->doSendingThemeBroadcast(Ljava/lang/String;Z)V

    .line 16905
    return v0

    .line 16884
    :catch_0
    move-exception v0

    .line 16885
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16886
    return v1

    .line 16867
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 16868
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v5, "PackageManager"

    const-string v6, "Failed to rename"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16869
    return v1
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .line 16917
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .line 16922
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
