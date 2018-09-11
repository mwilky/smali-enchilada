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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 98
    const-string v0, "memory"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 100
    if-eqz p3, :cond_0

    .line 101
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsData;)Lcom/android/settings/applications/ProcStatsData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
    .param p1, "x1"    # Lcom/android/settings/applications/ProcStatsData;

    .line 39
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsPackageEntry;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
    .param p1, "x1"    # Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 39
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 119
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x2

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 123
    const-string v0, "memory"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    .line 125
    invoke-virtual {v2}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 124
    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;Z)V

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;-><init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :cond_0
    return-void
.end method
