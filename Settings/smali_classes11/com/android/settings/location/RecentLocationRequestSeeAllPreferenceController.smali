.class public Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationRequestSeeAllPreferenceController.java"


# static fields
.field private static final KEY_ALL_RECENT_LOCATION_REQUESTS:Ljava/lang/String; = "all_recent_location_requests"


# instance fields
.field private final mFragment:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

.field private mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)V
    .locals 1

    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v0, p1}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;Lcom/android/settingslib/location/RecentLocationApps;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;Lcom/android/settingslib/location/RecentLocationApps;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mFragment:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    iput-object p4, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    return-void
.end method


# virtual methods
.method createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Ljava/util/List;)Landroid/support/v7/preference/Preference;
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/support/v7/preference/Preference;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/settings/ui/OPButtonPreference;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setKey(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;

    iget-object v3, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mFragment:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    iget-object v4, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    iget v3, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    const-string v5, "no_control_apps"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {p1, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f120b54

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setSummary(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    const v2, 0x7f120cb1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonString(Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;

    invoke-direct {v2, p0, v4, v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;-><init>(Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v7, "PrefControllerMixin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageHasActiveAdmins:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mAppsControlDisallowedBySystem:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    iget-object v2, p2, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonVisible(Z)V

    :goto_2
    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/location/LocationBasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "all_recent_location_requests"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "all_recent_location_requests"

    return-object v0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v1, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    invoke-virtual {v0}, Lcom/android/settingslib/location/RecentLocationApps;->getAppListSorted()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->getCurrentUsingGpsListForUid()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/location/RecentLocationApps$Request;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v1}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Ljava/util/List;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
