.class public Lcom/android/settings/applications/AppAndNotificationDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppAndNotificationDashboardFragment.java"


# static fields
.field private static final KEY_MANAGE_PERMS:Ljava/lang/String; = "manage_perms"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "AppAndNotifDashboard"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/app/Application;
    .param p2, "x2"    # Landroid/app/Fragment;

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "host"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Landroid/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string v2, "app_and_notif_cell_broadcast_settings"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/android/settings/applications/OPDataUsageControlPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/OPDataUsageControlPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/RecentAppsPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .local v1, "app":Landroid/app/Application;
    goto :goto_0

    .line 92
    .end local v1    # "app":Landroid/app/Application;
    :cond_0
    const/4 v1, 0x0

    .line 94
    .restart local v1    # "app":Landroid/app/Application;
    :goto_0
    invoke-static {p1, v1, p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getHelpResource()I
    .locals 1

    .line 62
    const v0, 0x7f120706

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "AppAndNotifDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 52
    const/16 v0, 0x2ec

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 67
    const v0, 0x7f160012

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "manage_perms"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 75
    .local v0, "managePermsPref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 76
    sget-boolean v1, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 77
    .local v1, "isCtaVersion":Z
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.oneplus.security"

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oneplus.security.action.OPPERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 82
    .end local v1    # "isCtaVersion":Z
    :cond_0
    return-void
.end method
