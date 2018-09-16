.class Lcom/android/server/pm/PackageManagerService$1;
.super Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 2123
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 2126
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$1$1;-><init>(Lcom/android/server/pm/PackageManagerService$1;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 2132
    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 2

    .line 2144
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 2146
    monitor-exit v0

    .line 2147
    return-void

    .line 2146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInstallPermissionRevoked()V
    .locals 2

    .line 2162
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2163
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 2164
    monitor-exit v0

    .line 2165
    return-void

    .line 2164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInstallPermissionUpdated()V
    .locals 2

    .line 2176
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 2178
    monitor-exit v0

    .line 2179
    return-void

    .line 2178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPermissionGranted(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 2135
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 2138
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 2140
    monitor-exit v0

    .line 2141
    return-void

    .line 2140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPermissionRemoved()V
    .locals 2

    .line 2182
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 2184
    monitor-exit v0

    .line 2185
    return-void

    .line 2184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPermissionRevoked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 2150
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 2152
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 2155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2157
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2158
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "permissions revoked"

    invoke-static {v1, v0, p2, v2}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    .line 2159
    return-void

    .line 2155
    .end local v0    # "appId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPermissionUpdated([IZ)V
    .locals 5
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z

    .line 2168
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2169
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 2170
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 2169
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2172
    :cond_0
    monitor-exit v0

    .line 2173
    return-void

    .line 2172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
