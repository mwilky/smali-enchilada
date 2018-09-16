.class Lcom/android/server/pm/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$canViewInstantApps:Z

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$internalPackageName:Ljava/lang/String;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I

.field final synthetic val$versionCode:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 18928
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$callingUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$canViewInstantApps:Z

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 18930
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18932
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 18933
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v3, 0x1

    .line 18937
    .local v3, "doDeletePackage":Z
    const-string v0, ""

    move-object v4, v0

    .line 18939
    .local v4, "versionName":Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 18942
    goto :goto_0

    .line 18940
    :catch_0
    move-exception v0

    .line 18941
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "PackageManager"

    const-string v6, "error while uninstall package"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18945
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 18946
    iget v6, v1, Lcom/android/server/pm/PackageManagerService$13;->val$callingUid:I

    .line 18947
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v6

    .line 18948
    .local v6, "targetIsInstantApp":Z
    if-eqz v6, :cond_1

    iget-boolean v7, v1, Lcom/android/server/pm/PackageManagerService$13;->val$canViewInstantApps:Z

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v5

    :goto_2
    move v3, v7

    .line 18951
    .end local v6    # "targetIsInstantApp":Z
    :cond_2
    const/16 v6, 0x1c

    const/16 v7, 0x3e7

    if-eqz v3, :cond_8

    .line 18952
    iget-boolean v8, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    if-nez v8, :cond_3

    .line 18953
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v11, v1, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iget v13, v1, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v14, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v8

    .line 18958
    .local v8, "returnCode":I
    new-array v9, v5, [I

    aput v6, v9, v0

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    .line 18959
    invoke-virtual {v9, v7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_9

    if-ne v8, v5, :cond_9

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    if-nez v9, :cond_9

    if-eqz v2, :cond_9

    .line 18962
    invoke-virtual {v2, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 18963
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v12, v1, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    const/16 v14, 0x3e7

    iget v15, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v8

    goto/16 :goto_6

    .line 18968
    .end local v8    # "returnCode":I
    :cond_3
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    invoke-static {v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v8

    .line 18971
    .local v8, "blockUninstallUserIds":[I
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 18972
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v12, v1, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iget v14, v1, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v15, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v9

    .local v9, "returnCode":I
    goto/16 :goto_5

    .line 18976
    .end local v9    # "returnCode":I
    :cond_4
    iget v9, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    and-int/lit8 v9, v9, -0x3

    .line 18977
    .local v9, "userFlags":I
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    array-length v14, v15

    move v12, v0

    :goto_3
    if-ge v12, v14, :cond_7

    aget v13, v15, v12

    .line 18978
    .local v13, "userId":I
    invoke-static {v8, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_5

    .line 18979
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    move-object/from16 v16, v8

    iget-wide v7, v1, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    .end local v8    # "blockUninstallUserIds":[I
    .local v16, "blockUninstallUserIds":[I
    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    .end local v13    # "userId":I
    .local v18, "userId":I
    move v7, v14

    move/from16 v14, v18

    move-object v8, v15

    move v15, v9

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v10

    .line 18981
    .local v10, "returnCode":I
    if-eq v10, v5, :cond_6

    .line 18982
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package delete failed for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v18

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v18    # "userId":I
    .restart local v13    # "userId":I
    const-string v14, ", returnCode "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v10    # "returnCode":I
    .end local v13    # "userId":I
    goto :goto_4

    .line 18977
    .end local v16    # "blockUninstallUserIds":[I
    .restart local v8    # "blockUninstallUserIds":[I
    :cond_5
    move-object/from16 v16, v8

    move/from16 v17, v12

    move v7, v14

    move-object v8, v15

    .end local v8    # "blockUninstallUserIds":[I
    .restart local v16    # "blockUninstallUserIds":[I
    :cond_6
    :goto_4
    add-int/lit8 v12, v17, 0x1

    move v14, v7

    move-object v15, v8

    move-object/from16 v8, v16

    const/16 v7, 0x3e7

    goto :goto_3

    .line 18989
    .end local v16    # "blockUninstallUserIds":[I
    .restart local v8    # "blockUninstallUserIds":[I
    :cond_7
    move-object/from16 v16, v8

    .end local v8    # "blockUninstallUserIds":[I
    .restart local v16    # "blockUninstallUserIds":[I
    const/4 v9, -0x4

    .end local v16    # "blockUninstallUserIds":[I
    .local v9, "returnCode":I
    :goto_5
    move v8, v9

    .line 18991
    .end local v9    # "returnCode":I
    .local v8, "returnCode":I
    goto :goto_6

    .line 18993
    .end local v8    # "returnCode":I
    :cond_8
    const/4 v8, -0x1

    .restart local v8    # "returnCode":I
    :cond_9
    :goto_6
    move v7, v8

    .line 18998
    .end local v8    # "returnCode":I
    .local v7, "returnCode":I
    if-ne v7, v5, :cond_b

    new-array v8, v5, [I

    aput v6, v8, v0

    .line 18999
    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v1, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    const/16 v8, 0x3e7

    if-eq v6, v8, :cond_b

    :cond_a
    move v0, v5

    nop

    :cond_b
    move v5, v0

    .line 19002
    .local v5, "isRecord":Z
    if-eqz v5, :cond_d

    .line 19003
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;)Lnet/oneplus/odm/insight/FrameworkEventCollector;

    move-result-object v0

    if-nez v0, :cond_c

    .line 19004
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v6, Lnet/oneplus/odm/insight/FrameworkEventCollector;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lnet/oneplus/odm/insight/FrameworkEventCollector;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->access$5702(Lcom/android/server/pm/PackageManagerService;Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 19006
    :cond_c
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;)Lnet/oneplus/odm/insight/FrameworkEventCollector;

    move-result-object v0

    .line 19007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    .line 19006
    invoke-virtual {v0, v6, v8, v4}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordUninstallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19014
    :cond_d
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v0, v6, v7, v8}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19017
    goto :goto_7

    .line 19015
    :catch_1
    move-exception v0

    .line 19016
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "PackageManager"

    const-string v8, "Observer no longer exists."

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19018
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7
    return-void
.end method
