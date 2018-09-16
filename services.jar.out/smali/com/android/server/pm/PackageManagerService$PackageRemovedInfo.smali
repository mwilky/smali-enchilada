.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field appearedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field broadcastUsers:[I

.field dataRemoved:Z

.field installReasons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field installerPackageName:Ljava/lang/String;

.field instantUserIds:[I

.field isRemovedPackageSystemUpdate:Z

.field isStaticSharedLib:Z

.field isUpdate:Z

.field origUsers:[I

.field final packageSender:Lcom/android/server/pm/PackageSender;

.field removedAppId:I

.field removedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;",
            ">;"
        }
    .end annotation
.end field

.field removedForAllUsers:Z

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSender;)V
    .locals 2
    .param p1, "packageSender"    # Lcom/android/server/pm/PackageSender;

    .line 19357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19340
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 19341
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    .line 19343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 19344
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19345
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    .line 19347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 19353
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 19358
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    .line 19359
    return-void
.end method

.method private sendPackageRemovedBroadcastInternal(Z)V
    .locals 11
    .param p1, "killApp"    # Z

    .line 19420
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isStaticSharedLib:Z

    if-eqz v0, :cond_0

    .line 19421
    return-void

    .line 19423
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 19424
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19425
    const-string v1, "android.intent.extra.DATA_REMOVED"

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19426
    const-string v1, "android.intent.extra.DONT_KILL_APP"

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19427
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isUpdate:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v1, :cond_3

    .line 19428
    :cond_2
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19430
    :cond_3
    const-string v1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedForAllUsers:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19431
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 19434
    const-string v1, "OP_PKG_NAME"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19436
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    move-object v5, v0

    invoke-interface/range {v2 .. v10}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19439
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 19440
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    move-object v5, v0

    invoke-interface/range {v2 .. v10}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19444
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-nez v1, :cond_5

    .line 19445
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/high16 v6, 0x1000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    move-object v5, v0

    invoke-interface/range {v2 .. v10}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19449
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/pm/PackageSender;->notifyPackageRemoved(Ljava/lang/String;)V

    .line 19452
    :cond_5
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v1, :cond_6

    .line 19453
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string v3, "android.intent.action.UID_REMOVED"

    const/4 v4, 0x0

    const/high16 v6, 0x1000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    move-object v5, v0

    invoke-interface/range {v2 .. v10}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19457
    :cond_6
    return-void
.end method

.method private sendSystemPackageUpdatedBroadcastsInternal()V
    .locals 21

    .line 19396
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 19397
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v3, :cond_0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19398
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19399
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v1

    invoke-interface/range {v3 .. v11}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19401
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    invoke-interface/range {v3 .. v11}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19403
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string v13, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-interface/range {v12 .. v20}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19405
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 19406
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v1

    invoke-interface/range {v3 .. v11}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19409
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    invoke-interface/range {v3 .. v11}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19414
    :cond_1
    return-void
.end method


# virtual methods
.method populateUsers([ILcom/android/server/pm/PackageSetting;)V
    .locals 3
    .param p1, "userIds"    # [I
    .param p2, "deletedPackageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 19460
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 19461
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    if-nez v0, :cond_0

    .line 19462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19463
    return-void

    .line 19466
    :cond_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3900()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19467
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3900()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    .line 19468
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 19469
    aget v1, p1, v0

    .line 19470
    .local v1, "userId":I
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19471
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    goto :goto_1

    .line 19473
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19468
    .end local v1    # "userId":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 19476
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method sendPackageRemovedBroadcasts(Z)V
    .locals 3
    .param p1, "killApp"    # Z

    .line 19362
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 19363
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 19364
    .local v0, "childCount":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 19365
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 19366
    .local v2, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    invoke-direct {v2, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 19364
    .end local v2    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19368
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method sendSystemPackageAppearedBroadcasts()V
    .locals 10

    .line 19385
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 19386
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 19387
    .local v0, "packageCount":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 19388
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 19389
    .local v2, "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 19391
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget-object v8, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    const/4 v9, 0x0

    .line 19389
    invoke-interface/range {v3 .. v9}, Lcom/android/server/pm/PackageSender;->sendPackageAddedForNewUsers(Ljava/lang/String;ZZI[I[I)V

    .line 19387
    .end local v2    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19393
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts()V
    .locals 4

    .line 19371
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_2

    .line 19372
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 19373
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 19374
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 19375
    .local v0, "childCount":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 19376
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 19377
    .local v2, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_1

    .line 19378
    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 19375
    .end local v2    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19382
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
