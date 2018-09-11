.class public Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppPermissionPreferenceController.java"


# static fields
.field private static final EXTRA_HIDE_INFO_BUTTON:Ljava/lang/String; = "hideInfoButton"

.field private static final TAG:Ljava/lang/String; = "PermissionPrefControl"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    .line 35
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private startManagePermissionsActivity()V
    .locals 5

    .line 104
    sget-boolean v0, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 106
    .local v0, "isCtaVersion":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 107
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oneplus.security.action.OPPERMISSION_APP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "packageName"

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 111
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v3, "hideInfoButton"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v3, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_1

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PermissionPrefControl"

    const-string v4, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method


# virtual methods
.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->startManagePermissionsActivity()V

    .line 92
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    .line 86
    return-void
.end method
