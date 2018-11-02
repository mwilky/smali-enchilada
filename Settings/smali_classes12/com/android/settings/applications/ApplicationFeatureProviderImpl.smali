.class public Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ApplicationFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;,
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;,
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;,
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private final mPms:Landroid/content/pm/IPackageManager;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iput-object p3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    iput-object p4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public calculateNumberOfAppsWithAdminGrantedPermissions([Ljava/lang/String;ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 8

    new-instance v7, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object v0, v7

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->executeInForeground()V

    :goto_0
    return-void
.end method

.method public calculateNumberOfPolicyInstalledApps(ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 3

    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->executeInForeground()V

    :goto_0
    return-void
.end method

.method public findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p2, v4

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v5, p1}, Landroid/content/pm/IPackageManager;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v7, 0x0

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v8

    goto :goto_1

    :cond_0
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_1

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v7, v8

    goto :goto_1

    :cond_1
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    move-object v7, v8

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    new-instance v8, Lcom/android/settings/applications/UserAppInfo;

    iget-object v9, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v2, v9}, Lcom/android/settings/applications/UserAppInfo;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/ApplicationInfo;)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v6

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getKeepEnabledPackages()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public listAppsWithAdminGrantedPermissions([Ljava/lang/String;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 8

    new-instance v7, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    move-object v0, v7

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;-><init>([Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public listPolicyInstalledApps(Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 3

    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;-><init>(Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/os/UserManager;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
