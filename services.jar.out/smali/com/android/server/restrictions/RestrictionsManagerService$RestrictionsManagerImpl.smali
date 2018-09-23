.class Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;
.super Landroid/content/IRestrictionsManager$Stub;
.source "RestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/restrictions/RestrictionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictionsManagerImpl"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/IDevicePolicyManager;

.field private final mUm:Landroid/os/IUserManager;

.field final synthetic this$0:Lcom/android/server/restrictions/RestrictionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/restrictions/RestrictionsManagerService;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->this$0:Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-direct {p0}, Landroid/content/IRestrictionsManager$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lcom/android/server/restrictions/RestrictionsManagerService;->access$000(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    const-string v0, "device_policy"

    invoke-static {p1, v0}, Lcom/android/server/restrictions/RestrictionsManagerService;->access$100(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    return-void
.end method

.method private enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method


# virtual methods
.method public createLocalApprovalIntent()Landroid/content/Intent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, v0}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.content.action.REQUEST_LOCAL_APPROVAL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v2, v8, v0}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot request permission without a restrictions provider registered"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mUm:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public hasRestrictionsProvider()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, v0}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_1
    return v2
.end method

.method public notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Restrictions provider does not match caller "

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.content.action.PERMISSION_RESPONSE_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.content.extra.RESPONSE_BUNDLE"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No restrictions provider registered for user"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_1
    :goto_0
    return-void
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mDpm:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "Package name does not match caller "

    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->enforceCallerMatchesPackage(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.content.action.REQUEST_PERMISSION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "android.content.extra.PACKAGE_NAME"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.content.extra.REQUEST_TYPE"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.content.extra.REQUEST_ID"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v5, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot request permission without a restrictions provider registered"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_1
    :goto_0
    return-void
.end method
