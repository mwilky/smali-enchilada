.class public Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppHeaderViewPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field private static final KEY_HEADER:Ljava/lang/String; = "header_view"


# instance fields
.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private mHeader:Lcom/android/settings/applications/LayoutPreference;

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 49
    const-string v0, "header_view"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 51
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mPackageName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 56
    :cond_0
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 5
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 91
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 92
    .local v1, "isInstantApp":Z
    if-eqz v1, :cond_0

    .line 93
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settings/Utils;->getInstallationStatus(Landroid/content/pm/ApplicationInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "summary":Ljava/lang/CharSequence;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 95
    invoke-virtual {v3, p2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v3

    .line 96
    invoke-virtual {v3, p2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v2}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v3

    const/4 v4, 0x0

    .line 99
    invoke-virtual {v3, v0, v4}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 100
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 66
    const-string v0, "header_view"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    .line 69
    const v3, 0x7f0a01ae

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mPackageName:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/android/settings/widget/EntityHeaderController;->bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 74
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 79
    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 80
    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    .line 81
    return-void
.end method

.method public refreshUi()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 86
    return-void
.end method
