.class public Lcom/android/settingslib/users/AppRestrictionsHelper;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;,
        Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppRestrictionsHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

.field private mLeanback:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRestrictedProfile:Z

.field mSelectedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisibleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1

    new-instance v0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0}, Lcom/android/settingslib/users/AppRestrictionsHelper;-><init>(Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    return-void
.end method

.method private addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2200

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_6

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_6

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_1

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_6

    :cond_1
    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    :cond_3
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/settingslib/users/AppRestrictionsHelper;->getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    new-instance v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v7}, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    iget-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    iget-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v8, v7, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    :cond_5
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    goto :goto_0

    :cond_7
    return-void
.end method

.method private addSystemImes(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mInjector:Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settingslib/users/AppRestrictionsHelper;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    :goto_1
    return v0
.end method


# virtual methods
.method public applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const/high16 v4, 0x400000

    invoke-interface {v3, p1, v4, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const/high16 v4, 0x800000

    if-eqz v3, :cond_0

    iget-boolean v5, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_0

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-interface {v5, p1, v6, v2, v2}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;III)I

    :cond_1
    if-eqz v3, :cond_2

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_2

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    invoke-interface {p3, p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;->onDisableUiForPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    :goto_0
    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_1

    :cond_4
    invoke-interface {p3, p1}, Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;->onDisableUiForPackage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    return-void
.end method

.method public applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "AppRestrictionsHelper"

    const-string v1, "Cannot apply application restrictions on another user!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fetchAndMergeApps()V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->addSystemImes(Ljava/util/Set;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mLeanback:Z

    if-eqz v4, :cond_0

    const-string v4, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-direct {p0, v5, v4, v2}, Lcom/android/settingslib/users/AppRestrictionsHelper;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    const/high16 v5, 0x400000

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/high16 v8, 0x800000

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v9

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_2

    new-instance v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v8}, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mRestrictedProfile:Z

    if-eqz v10, :cond_3

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    iget-object v11, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v8

    :goto_2
    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    move-object v7, v6

    const/16 v9, 0x2000

    :try_start_1
    iget-object v10, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-interface {v1, v9, v10}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v10

    :cond_5
    goto :goto_3

    :catch_1
    move-exception v9

    :goto_3
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v11, v8

    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    iget v11, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_7

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_7

    new-instance v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    invoke-direct {v11}, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;-><init>()V

    iget-object v12, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    goto :goto_4

    :cond_8
    iget-object v8, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    new-instance v9, Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;

    invoke-direct {v9, v6}, Lcom/android/settingslib/users/AppRestrictionsHelper$AppLabelComparator;-><init>(Lcom/android/settingslib/users/AppRestrictionsHelper$1;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_5
    if-ltz v8, :cond_a

    iget-object v9, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v9, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_a
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v9, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v11, v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iput-object v11, v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    goto :goto_8

    :cond_b
    iget-object v11, v10, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    goto :goto_7

    :cond_c
    return-void
.end method

.method public getVisibleApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mVisibleApps:Ljava/util/List;

    return-object v0
.end method

.method public isPackageSelected(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setLeanback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mLeanback:Z

    return-void
.end method

.method public setPackageSelected(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
