.class public Lcom/android/settings/applications/AppStateInstallAppsBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateInstallAppsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mIpm:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method private getAppOpMode(IILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private hasPermission(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    const-string v3, "PackageManager dead. Cannot get permission info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    const-string v2, "PackageManager dead. Cannot get permission info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private isSystemApp(I)Z
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    .locals 6

    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;-><init>()V

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-direct {p0, v1, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->permissionRequested:Z

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-direct {p0, v1, p2}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->permissionGranted:Z

    const/16 v1, 0x49

    invoke-direct {p0, v1, p2, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e7

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result v3

    iget v4, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    if-eq v4, v3, :cond_1

    iget v4, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v4, v1, p2, p1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-direct {p0, v1, p2, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v5, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    invoke-virtual {v4, v1, v2, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->isSystemApp(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isSystemApp:Z

    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
