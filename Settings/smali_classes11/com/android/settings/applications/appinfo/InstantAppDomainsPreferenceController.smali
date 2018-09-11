.class public Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "InstantAppDomainsPreferenceController.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 36
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 41
    const/4 v0, 0x0

    move v1, v0

    .line 43
    .local v1, "isAvailabity":I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    move v1, v0

    .line 46
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/AppDomainsPreference;

    .line 54
    .local v0, "instantAppDomainsPreference":Lcom/android/settings/applications/AppDomainsPreference;
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 55
    invoke-virtual {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 56
    .local v1, "handledDomainSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 57
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 58
    .local v2, "handledDomains":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/settings/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 60
    array-length v3, v2

    new-array v3, v3, [I

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/AppDomainsPreference;->setValues([I)V

    .line 61
    return-void
.end method
