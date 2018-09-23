.class public Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppMemoryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;
    }
.end annotation


# static fields
.field private static final KEY_MEMORY:Ljava/lang/String; = "memory"


# instance fields
.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field private mStatsManager:Lcom/android/settings/applications/ProcStatsData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "memory"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsData;)Lcom/android/settings/applications/ProcStatsData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsPackageEntry;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const-string v0, "memory"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v2}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;-><init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
