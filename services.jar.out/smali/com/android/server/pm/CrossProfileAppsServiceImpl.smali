.class public Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.super Landroid/content/pm/ICrossProfileApps$Stub;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;,
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossProfileAppsService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/content/pm/ICrossProfileApps$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    return-void
.end method

.method private getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v2, v5

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    nop

    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isPackageEnabled(Ljava/lang/String;I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const/high16 v4, 0xc0000

    invoke-virtual {v3, p1, v4, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v5, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;ILandroid/os/UserHandle;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    const/high16 v3, 0xc0000

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, p1, v3, p3, v4}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v6, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER or activity is not exported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private verifyCallingPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v2, p3, v1, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/app/ActivityManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attempts to start an activity in other package - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot access unrelated user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
