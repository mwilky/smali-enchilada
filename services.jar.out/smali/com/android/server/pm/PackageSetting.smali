.class public final Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/PackageSettingBase;
.source "PackageSetting.java"


# instance fields
.field appId:I

.field pkg:Landroid/content/pm/PackageParser$Package;

.field sharedUser:Lcom/android/server/pm/SharedUserSetting;

.field private sharedUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSettingBase;-><init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSettingBase;-><init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    invoke-direct/range {v0 .. v16}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)V

    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSetting;)V
    .locals 1

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    return-void
.end method


# virtual methods
.method public areInstallPermissionsFixed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    return v0
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v0
.end method

.method public getPackage()Landroid/content/pm/PackageParser$Package;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method public getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/server/pm/PackageSettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-object v0
.end method

.method public getSharedUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    return v0
.end method

.method public hasChildPackages()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForwardLocked()Z
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMatch(I)Z
    .locals 1

    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOem()Z
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivileged()Z
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProduct()Z
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSharedUser()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystem()Z
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUpdatedSystem()Z
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVendor()Z
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInstallPermissionsFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_0
    const-wide v5, 0x10900000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    const-wide v7, 0x10500000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000003L

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10900000004L

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x10300000005L

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10300000006L

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10900000007L

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_1

    const-wide v9, 0x20b00000008L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-string v4, "base"

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v4, v4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v13, v13

    if-ge v4, v13, :cond_1

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual {v1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v13, v13, v4

    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-wide v4, 0x20b00000009L

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/pm/PackageSetting;->writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
