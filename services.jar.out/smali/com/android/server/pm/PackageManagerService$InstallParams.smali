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
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationInfo"    # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;
    .param p12, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p13, "installReason"    # I

    .line 16062
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16063
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 16064
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16065
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 16066
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 16067
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16068
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 16069
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16070
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 16071
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 16072
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 16073
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 16074
    iput p13, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 16075
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 13
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 16084
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 16085
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 16086
    .local v1, "installLocation":I
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 16088
    .local v2, "onSd":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 16091
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 16096
    .local v6, "installedPkg":Landroid/content/pm/PackageParser$Package;
    move-object v7, v6

    .line 16097
    .local v7, "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_1

    .line 16098
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 16099
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_1

    .line 16100
    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v7, v9

    .line 16104
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    const/4 v8, 0x2

    if-eqz v7, :cond_6

    .line 16118
    iget v9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    move v9, v3

    .line 16120
    .local v9, "downgradeRequested":Z
    :goto_1
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v3

    .line 16123
    .local v10, "packageDebuggable":Z
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

    .line 16125
    .local v3, "downgradePermitted":Z
    :cond_5
    if-nez v3, :cond_6

    .line 16127
    :try_start_1
    invoke-static {v7, p1}, Lcom/android/server/pm/PackageManagerService;->access$4200(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16131
    goto :goto_3

    .line 16128
    :catch_0
    move-exception v4

    .line 16129
    .local v4, "e":Lcom/android/server/pm/PackageManagerException;
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

    .line 16130
    const/4 v8, -0x7

    monitor-exit v5

    return v8

    .line 16135
    .end local v3    # "downgradePermitted":Z
    .end local v4    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v9    # "downgradeRequested":Z
    .end local v10    # "packageDebuggable":Z
    :cond_6
    :goto_3
    if-eqz v6, :cond_e

    .line 16136
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_d

    .line 16138
    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 16139
    if-eqz v2, :cond_7

    .line 16140
    const-string v3, "PackageManager"

    const-string v4, "Cannot install update to system app on sdcard"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16141
    const/4 v3, -0x3

    monitor-exit v5

    return v3

    .line 16143
    :cond_7
    monitor-exit v5

    return v4

    .line 16145
    :cond_8
    if-eqz v2, :cond_9

    .line 16147
    monitor-exit v5

    return v8

    .line 16150
    :cond_9
    if-ne v1, v4, :cond_a

    .line 16152
    monitor-exit v5

    return v4

    .line 16153
    :cond_a
    if-ne v1, v8, :cond_b

    .end local v6    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_4

    .line 16157
    .restart local v6    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    :cond_b
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$4300(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 16158
    monitor-exit v5

    return v8

    .line 16160
    :cond_c
    monitor-exit v5

    return v4

    .line 16165
    :cond_d
    const/4 v3, -0x4

    monitor-exit v5

    return v3

    .line 16168
    .end local v6    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    :cond_e
    :goto_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16171
    if-eqz v2, :cond_f

    .line 16172
    return v8

    .line 16174
    :cond_f
    iget v3, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v3

    .line 16168
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

    .line 16504
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 16505
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 16507
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .line 16511
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16512
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16513
    return-void
.end method

.method public handleStartCopy()V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16184
    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 16187
    .local v2, "ret":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_1

    .line 16188
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 16189
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16190
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_0

    .line 16192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16196
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

    .line 16197
    .local v5, "onSd":Z
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move v6, v0

    .line 16198
    .local v6, "onInt":Z
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move v7, v0

    .line 16199
    .local v7, "ephemeral":Z
    const/4 v0, 0x0

    .line 16203
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    const-wide/32 v8, 0x5000000

    .line 16204
    .local v8, "INSTALL_THRESHOLD":J
    invoke-static {}, Lcom/android/server/pm/OemPackageManagerHelper;->getDataFreeSpace()J

    move-result-wide v10

    .line 16206
    .local v10, "dataFreeSpace":J
    const/4 v13, -0x1

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 16208
    const-string v14, "PackageManager"

    const-string v15, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16209
    const/16 v2, -0x13

    goto/16 :goto_6

    .line 16210
    :cond_5
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 16211
    const-string v14, "PackageManager"

    const-string v15, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16212
    const/16 v2, -0x13

    goto/16 :goto_6

    .line 16213
    :cond_6
    const-wide/32 v14, 0x5000000

    cmp-long v14, v10, v14

    if-gtz v14, :cond_7

    .line 16214
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the the free space of internal partition is "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16215
    const/4 v2, -0x4

    goto/16 :goto_6

    .line 16219
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

    .line 16222
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v3, "pkgLite":Landroid/content/pm/PackageInfoLite;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_8

    if-eqz v7, :cond_8

    .line 16223
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pkgLite for install: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16230
    :cond_8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v0, :cond_a

    iget v0, v3, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v13, :cond_a

    .line 16233
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v4

    .line 16234
    .local v4, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 16235
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 16234
    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v14

    .line 16237
    .local v14, "lowThreshold":J
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v0, v13, v12}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 16241
    .local v12, "sizeBytes":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v20, 0x0

    add-long v21, v12, v14

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    .line 16242
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v26, v2

    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16242
    .end local v2    # "ret":I
    .local v26, "ret":I
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v27, v3

    :try_start_2
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 16242
    .end local v3    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v27, "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v28, v4

    :try_start_3
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 16242
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .local v28, "storage":Landroid/os/storage/StorageManager;
    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 16246
    .end local v27    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    goto :goto_5

    .line 16244
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v27    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 16244
    .end local v28    # "storage":Landroid/os/storage/StorageManager;
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    :catch_1
    move-exception v0

    move-object/from16 v28, v4

    .line 16244
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v28    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_4

    .line 16244
    .end local v27    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v28    # "storage":Landroid/os/storage/StorageManager;
    .restart local v3    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    :catch_2
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .line 16244
    .end local v3    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v27    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v28    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_4

    .line 16244
    .end local v26    # "ret":I
    .end local v27    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v28    # "storage":Landroid/os/storage/StorageManager;
    .restart local v2    # "ret":I
    .restart local v3    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    :catch_3
    move-exception v0

    move/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .line 16245
    .end local v2    # "ret":I
    .end local v3    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v26    # "ret":I
    .restart local v27    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v28    # "storage":Landroid/os/storage/StorageManager;
    :goto_4
    const-string v2, "PackageManager"

    const-string v3, "Failed to free cache"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16255
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    move-object/from16 v0, v27

    .line 16255
    .end local v27    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    :goto_5
    iget v2, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v3, -0x6

    if-ne v2, v3, :cond_9

    .line 16257
    const/4 v2, -0x1

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 16263
    .end local v12    # "sizeBytes":J
    .end local v14    # "lowThreshold":J
    .end local v28    # "storage":Landroid/os/storage/StorageManager;
    :cond_9
    move/from16 v2, v26

    goto :goto_6

    .line 16263
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v26    # "ret":I
    .restart local v2    # "ret":I
    .restart local v3    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_a
    move/from16 v26, v2

    move-object/from16 v27, v3

    .line 16263
    .end local v2    # "ret":I
    .end local v3    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v26    # "ret":I
    .restart local v27    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    move/from16 v2, v26

    move-object/from16 v0, v27

    .line 16263
    .end local v26    # "ret":I
    .end local v27    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v2    # "ret":I
    :goto_6
    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 16264
    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 16265
    .local v3, "loc":I
    const/4 v4, -0x3

    if-ne v3, v4, :cond_b

    .line 16266
    const/16 v2, -0x13

    goto :goto_7

    .line 16267
    :cond_b
    const/4 v4, -0x4

    if-ne v3, v4, :cond_c

    .line 16268
    const/4 v2, -0x1

    goto :goto_7

    .line 16269
    :cond_c
    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    .line 16270
    const/4 v2, -0x4

    goto :goto_7

    .line 16271
    :cond_d
    const/4 v4, -0x2

    if-ne v3, v4, :cond_e

    .line 16272
    const/4 v2, -0x2

    goto :goto_7

    .line 16273
    :cond_e
    const/4 v4, -0x6

    if-ne v3, v4, :cond_f

    .line 16274
    const/4 v2, -0x3

    goto :goto_7

    .line 16275
    :cond_f
    const/4 v4, -0x5

    if-ne v3, v4, :cond_10

    .line 16276
    const/16 v2, -0x14

    goto :goto_7

    .line 16279
    :cond_10
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v3

    .line 16280
    const/4 v4, -0x7

    if-ne v3, v4, :cond_11

    .line 16281
    const/16 v2, -0x19

    goto :goto_7

    .line 16282
    :cond_11
    if-nez v5, :cond_15

    if-nez v6, :cond_15

    .line 16284
    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    .line 16286
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16287
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_7

    .line 16288
    :cond_12
    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    .line 16289
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_13

    .line 16290
    const-string v4, "PackageManager"

    const-string v12, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v4, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16292
    :cond_13
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16293
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x19

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_7

    .line 16298
    :cond_14
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16299
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16305
    .end local v3    # "loc":I
    :cond_15
    :goto_7
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    .line 16308
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    if-eqz v0, :cond_16

    .line 16309
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OemCompatibilityHelper;

    move-result-object v4

    iget-object v12, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    iget-object v13, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Lcom/android/server/pm/OemCompatibilityHelper;->abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    .line 16313
    :cond_16
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16315
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2a

    .line 16318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 16319
    .local v4, "verifierUser":Landroid/os/UserHandle;
    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v4, v12, :cond_17

    .line 16320
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 16327
    :cond_17
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/high16 v13, 0x10000000

    if-nez v12, :cond_18

    .line 16328
    const/4 v12, -0x1

    goto :goto_8

    :cond_18
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 16329
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 16328
    invoke-virtual {v12, v14, v13, v15}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v12

    .line 16331
    .local v12, "requiredUid":I
    :goto_8
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-nez v14, :cond_19

    .line 16332
    move/from16 v29, v2

    const/4 v2, -0x1

    goto :goto_9

    :cond_19
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 16333
    move/from16 v29, v2

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 16332
    .end local v2    # "ret":I
    .local v29, "ret":I
    invoke-virtual {v14, v15, v13, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 16336
    .local v2, "optionalUid":I
    :goto_9
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v14, :cond_1a

    const/4 v14, -0x1

    goto :goto_a

    :cond_1a
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v14, v14, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    .line 16337
    .local v14, "installerUid":I
    :goto_a
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v15, v15, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v15, :cond_29

    const/4 v15, -0x1

    if-ne v12, v15, :cond_1c

    if-eq v2, v15, :cond_1b

    goto :goto_b

    .line 16492
    :cond_1b
    move-object/from16 v35, v0

    move/from16 v39, v2

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move-wide/from16 v33, v8

    move-wide/from16 v36, v10

    goto/16 :goto_11

    .line 16337
    :cond_1c
    :goto_b
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16339
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    move/from16 v30, v5

    iget v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 16338
    .end local v5    # "onSd":Z
    .local v30, "onSd":Z
    invoke-static {v15, v13, v5, v14}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;III)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 16340
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16342
    .local v5, "verification":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16343
    new-instance v13, Ljava/io/File;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    const-string v15, "application/vnd.android.package-archive"

    invoke-virtual {v5, v13, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16345
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16348
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "application/vnd.android.package-archive"

    const/16 v20, 0x0

    .line 16349
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    .line 16348
    move-object/from16 v17, v13

    move-object/from16 v18, v5

    invoke-static/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v13

    .line 16352
    .local v13, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v15, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    if-eqz v15, :cond_1d

    .line 16353
    const-string v15, "PackageManager"

    move/from16 v31, v6

    new-instance v6, Ljava/lang/StringBuilder;

    .line 16353
    .end local v6    # "onInt":Z
    .local v31, "onInt":Z
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v7

    const-string v7, "Found "

    .line 16353
    .end local v7    # "ephemeral":Z
    .local v32, "ephemeral":Z
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " verifiers for intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16354
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

    .line 16353
    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 16358
    .end local v31    # "onInt":Z
    .end local v32    # "ephemeral":Z
    .restart local v6    # "onInt":Z
    .restart local v7    # "ephemeral":Z
    :cond_1d
    move/from16 v31, v6

    move/from16 v32, v7

    .line 16358
    .end local v6    # "onInt":Z
    .end local v7    # "ephemeral":Z
    .restart local v31    # "onInt":Z
    .restart local v32    # "ephemeral":Z
    :goto_c
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$4808(Lcom/android/server/pm/PackageManagerService;)I

    move-result v6

    .line 16360
    .local v6, "verificationId":I
    const-string v7, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16362
    const-string v7, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16365
    const-string v7, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    iget v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16368
    const-string v7, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    iget-object v15, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16371
    const-string v7, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    iget v15, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v5, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16374
    const-string v7, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    .line 16375
    move-wide/from16 v33, v8

    invoke-virtual {v0}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v8

    .line 16374
    .end local v8    # "INSTALL_THRESHOLD":J
    .local v33, "INSTALL_THRESHOLD":J
    invoke-virtual {v5, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 16377
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v7, :cond_21

    .line 16378
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v7, :cond_1e

    .line 16379
    const-string v7, "android.intent.extra.ORIGINATING_URI"

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16382
    :cond_1e
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v7, :cond_1f

    .line 16383
    const-string v7, "android.intent.extra.REFERRER"

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16386
    :cond_1f
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v7, :cond_20

    .line 16387
    const-string v7, "android.intent.extra.ORIGINATING_UID"

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16390
    :cond_20
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v7, :cond_21

    .line 16391
    const-string v7, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16396
    :cond_21
    new-instance v7, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v7, v12, v3}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 16399
    .local v7, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16401
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8, v0, v13, v7}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v8

    .line 16404
    .local v8, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v9

    .line 16405
    .local v9, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v15}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v27

    .line 16411
    .local v27, "idleDuration":J
    if-eqz v8, :cond_24

    .line 16412
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    .line 16413
    .local v15, "N":I
    if-nez v15, :cond_22

    .line 16414
    move-object/from16 v35, v0

    const-string v0, "PackageManager"

    .line 16414
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v35, "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-wide/from16 v36, v10

    const-string v10, "Additional verifiers required, but none installed."

    .line 16414
    .end local v10    # "dataFreeSpace":J
    .local v36, "dataFreeSpace":J
    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16415
    const/16 v0, -0x16

    .line 16430
    .end local v29    # "ret":I
    .local v0, "ret":I
    move-object/from16 v38, v8

    goto :goto_f

    .line 16417
    .end local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v36    # "dataFreeSpace":J
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v10    # "dataFreeSpace":J
    .restart local v29    # "ret":I
    :cond_22
    move-object/from16 v35, v0

    move-wide/from16 v36, v10

    .line 16417
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v10    # "dataFreeSpace":J
    .restart local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v36    # "dataFreeSpace":J
    const/16 v16, 0x0

    .line 16417
    .local v16, "i":I
    :goto_d
    move/from16 v0, v16

    .line 16417
    .end local v16    # "i":I
    .local v0, "i":I
    if-ge v0, v15, :cond_23

    .line 16418
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 16419
    .local v10, "verifierComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    .line 16420
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 16421
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x0

    const-string/jumbo v24, "package verifier"

    .line 16419
    move-object/from16 v17, v9

    move-wide/from16 v20, v27

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 16423
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16424
    .local v11, "sufficientIntent":Landroid/content/Intent;
    invoke-virtual {v11, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16425
    move-object/from16 v38, v8

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16425
    .end local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v38, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 16417
    .end local v10    # "verifierComponent":Landroid/content/ComponentName;
    .end local v11    # "sufficientIntent":Landroid/content/Intent;
    add-int/lit8 v16, v0, 0x1

    .line 16417
    .end local v0    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v8, v38

    goto :goto_d

    .line 16430
    .end local v15    # "N":I
    .end local v16    # "i":I
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_23
    move-object/from16 v38, v8

    .line 16430
    .end local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_e

    .line 16430
    .end local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v36    # "dataFreeSpace":J
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v10, "dataFreeSpace":J
    :cond_24
    move-object/from16 v35, v0

    move-object/from16 v38, v8

    move-wide/from16 v36, v10

    .line 16430
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v8    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v10    # "dataFreeSpace":J
    .restart local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v36    # "dataFreeSpace":J
    .restart local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_e
    move/from16 v0, v29

    .line 16430
    .end local v29    # "ret":I
    .local v0, "ret":I
    :goto_f
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-eqz v8, :cond_26

    .line 16431
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16432
    .local v8, "optionalIntent":Landroid/content/Intent;
    const-string v11, "com.qualcomm.qti.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16433
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v19, "application/vnd.android.package-archive"

    const/16 v20, 0x0

    .line 16434
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    .line 16433
    move-object/from16 v17, v11

    move-object/from16 v18, v8

    invoke-static/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v11

    .line 16435
    .local v11, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    invoke-static {v15, v10, v11}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v10

    .line 16437
    .local v10, "optionalVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v8, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16438
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageVerificationState;->addOptionalVerifier(I)V

    .line 16439
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v15, :cond_25

    .line 16440
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v39, v2

    const-string v2, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 16440
    .end local v2    # "optionalUid":I
    .local v39, "optionalUid":I
    invoke-virtual {v15, v8, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_10

    .line 16442
    .end local v39    # "optionalUid":I
    .restart local v2    # "optionalUid":I
    :cond_25
    move/from16 v39, v2

    .line 16442
    .end local v2    # "optionalUid":I
    .restart local v39    # "optionalUid":I
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

    .line 16451
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16451
    .end local v8    # "optionalIntent":Landroid/content/Intent;
    .end local v10    # "optionalVerifierComponent":Landroid/content/ComponentName;
    .end local v11    # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_10

    .line 16454
    .end local v39    # "optionalUid":I
    .restart local v2    # "optionalUid":I
    :cond_26
    move/from16 v39, v2

    .line 16454
    .end local v2    # "optionalUid":I
    .restart local v39    # "optionalUid":I
    :goto_10
    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 16456
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-static {v2, v8, v13}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 16458
    .local v2, "requiredVerifierComponent":Landroid/content/ComponentName;
    const-wide/32 v10, 0x40000

    const-string/jumbo v8, "verification"

    invoke-static {v10, v11, v8, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 16465
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16466
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 16468
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x0

    const-string/jumbo v24, "package verifier"

    .line 16466
    move-object/from16 v17, v9

    move-object/from16 v19, v8

    move-wide/from16 v20, v27

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 16469
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

    .line 16485
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16487
    .end local v2    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v6    # "verificationId":I
    .end local v7    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v9    # "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v13    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v27    # "idleDuration":J
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_27
    goto :goto_12

    .line 16492
    .end local v31    # "onInt":Z
    .end local v32    # "ephemeral":Z
    .end local v33    # "INSTALL_THRESHOLD":J
    .end local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v36    # "dataFreeSpace":J
    .end local v39    # "optionalUid":I
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v2, "optionalUid":I
    .local v6, "onInt":Z
    .local v7, "ephemeral":Z
    .local v8, "INSTALL_THRESHOLD":J
    .local v10, "dataFreeSpace":J
    .restart local v29    # "ret":I
    :cond_28
    move-object/from16 v35, v0

    move/from16 v39, v2

    move/from16 v31, v6

    move/from16 v32, v7

    move-wide/from16 v33, v8

    move-wide/from16 v36, v10

    .line 16492
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v2    # "optionalUid":I
    .end local v6    # "onInt":Z
    .end local v7    # "ephemeral":Z
    .end local v8    # "INSTALL_THRESHOLD":J
    .end local v10    # "dataFreeSpace":J
    .restart local v31    # "onInt":Z
    .restart local v32    # "ephemeral":Z
    .restart local v33    # "INSTALL_THRESHOLD":J
    .restart local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v36    # "dataFreeSpace":J
    .restart local v39    # "optionalUid":I
    goto :goto_11

    .line 16492
    .end local v30    # "onSd":Z
    .end local v31    # "onInt":Z
    .end local v32    # "ephemeral":Z
    .end local v33    # "INSTALL_THRESHOLD":J
    .end local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v36    # "dataFreeSpace":J
    .end local v39    # "optionalUid":I
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v2    # "optionalUid":I
    .local v5, "onSd":Z
    .restart local v6    # "onInt":Z
    .restart local v7    # "ephemeral":Z
    .restart local v8    # "INSTALL_THRESHOLD":J
    .restart local v10    # "dataFreeSpace":J
    :cond_29
    move-object/from16 v35, v0

    move/from16 v39, v2

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move-wide/from16 v33, v8

    move-wide/from16 v36, v10

    .line 16492
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v2    # "optionalUid":I
    .end local v5    # "onSd":Z
    .end local v6    # "onInt":Z
    .end local v7    # "ephemeral":Z
    .end local v8    # "INSTALL_THRESHOLD":J
    .end local v10    # "dataFreeSpace":J
    .restart local v30    # "onSd":Z
    .restart local v31    # "onInt":Z
    .restart local v32    # "ephemeral":Z
    .restart local v33    # "INSTALL_THRESHOLD":J
    .restart local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v36    # "dataFreeSpace":J
    .restart local v39    # "optionalUid":I
    :goto_11
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v2

    .line 16496
    .end local v4    # "verifierUser":Landroid/os/UserHandle;
    .end local v12    # "requiredUid":I
    .end local v14    # "installerUid":I
    .end local v29    # "ret":I
    .end local v39    # "optionalUid":I
    .local v2, "ret":I
    move v0, v2

    goto :goto_12

    .line 16496
    .end local v30    # "onSd":Z
    .end local v31    # "onInt":Z
    .end local v32    # "ephemeral":Z
    .end local v33    # "INSTALL_THRESHOLD":J
    .end local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v36    # "dataFreeSpace":J
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v5    # "onSd":Z
    .restart local v6    # "onInt":Z
    .restart local v7    # "ephemeral":Z
    .restart local v8    # "INSTALL_THRESHOLD":J
    .restart local v10    # "dataFreeSpace":J
    :cond_2a
    move-object/from16 v35, v0

    move/from16 v29, v2

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move-wide/from16 v33, v8

    move-wide/from16 v36, v10

    move/from16 v0, v29

    .end local v2    # "ret":I
    .end local v5    # "onSd":Z
    .end local v6    # "onInt":Z
    .end local v7    # "ephemeral":Z
    .end local v8    # "INSTALL_THRESHOLD":J
    .end local v10    # "dataFreeSpace":J
    .local v0, "ret":I
    .restart local v30    # "onSd":Z
    .restart local v31    # "onInt":Z
    .restart local v32    # "ephemeral":Z
    .restart local v33    # "INSTALL_THRESHOLD":J
    .restart local v35    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v36    # "dataFreeSpace":J
    :goto_12
    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16497
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16079
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
