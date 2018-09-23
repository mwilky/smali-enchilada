.class Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationRequestPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/RecentLocationRequestPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private final mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private final mPackage:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f12017e

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 v1, 0x1

    return v1
.end method
