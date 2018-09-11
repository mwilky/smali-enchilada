.class public final Lcom/android/settings/applications/AppPermissions;
.super Ljava/lang/Object;
.source "AppPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppPermissions$Permission;,
        Lcom/android/settings/applications/AppPermissions$PermissionGroup;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPermissions"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGroups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppPermissions$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    .line 45
    iput-object p1, p0, Lcom/android/settings/applications/AppPermissions;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0, p2}, Lcom/android/settings/applications/AppPermissions;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/applications/AppPermissions;->refresh()V

    .line 48
    return-void
.end method

.method public static appSupportsRuntime(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 126
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AppPermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadPermissionGroups()V
    .locals 11

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settings/applications/AppPermissions;->appSupportsRuntime(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 89
    .local v0, "appSupportsRuntimePermissions":Z
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 90
    iget-object v3, p0, Lcom/android/settings/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 94
    .local v3, "requestedPerm":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/AppPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .local v5, "permInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 97
    nop

    .line 100
    iget-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 101
    .local v6, "permName":Ljava/lang/String;
    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v7, v6

    .line 103
    .local v7, "groupName":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/AppPermissions$PermissionGroup;

    .line 104
    .local v8, "group":Lcom/android/settings/applications/AppPermissions$PermissionGroup;
    if-nez v8, :cond_2

    .line 105
    new-instance v9, Lcom/android/settings/applications/AppPermissions$PermissionGroup;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/settings/applications/AppPermissions$PermissionGroup;-><init>(Lcom/android/settings/applications/AppPermissions$1;)V

    move-object v8, v9

    .line 106
    iget-object v9, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_2
    if-eqz v0, :cond_3

    iget v9, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v9, v4, :cond_3

    move v9, v4

    goto :goto_2

    :cond_3
    move v9, v1

    .line 111
    .local v9, "runtime":Z
    :goto_2
    iget-object v10, p0, Lcom/android/settings/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v10, v10, v2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    .line 114
    .local v4, "granted":Z
    :goto_3
    new-instance v10, Lcom/android/settings/applications/AppPermissions$Permission;

    invoke-direct {v10, v9, v4}, Lcom/android/settings/applications/AppPermissions$Permission;-><init>(ZZ)V

    .line 115
    .local v10, "permission":Lcom/android/settings/applications/AppPermissions$Permission;
    invoke-virtual {v8, v10, v6}, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->addPermission(Lcom/android/settings/applications/AppPermissions$Permission;Ljava/lang/String;)V

    .end local v3    # "requestedPerm":Ljava/lang/String;
    .end local v4    # "granted":Z
    .end local v5    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "permName":Ljava/lang/String;
    .end local v7    # "groupName":Ljava/lang/String;
    .end local v8    # "group":Lcom/android/settings/applications/AppPermissions$PermissionGroup;
    .end local v9    # "runtime":Z
    .end local v10    # "permission":Lcom/android/settings/applications/AppPermissions$Permission;
    goto :goto_4

    .line 95
    .restart local v3    # "requestedPerm":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 96
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppPermissions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    nop

    .line 89
    .end local v3    # "requestedPerm":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_5
    if-ltz v1, :cond_7

    .line 119
    iget-object v2, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppPermissions$PermissionGroup;

    invoke-static {v2}, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->access$100(Lcom/android/settings/applications/AppPermissions$PermissionGroup;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 120
    iget-object v2, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 118
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 123
    .end local v1    # "i":I
    :cond_7
    return-void
.end method


# virtual methods
.method public getGrantedPermissionsCount()I
    .locals 3

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "ct":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppPermissions$PermissionGroup;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getPermissionCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissions;->mGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/applications/AppPermissions;->loadPermissionGroups()V

    .line 64
    :cond_0
    return-void
.end method
