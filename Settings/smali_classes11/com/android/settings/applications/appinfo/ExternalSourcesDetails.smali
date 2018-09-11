.class public Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ExternalSourcesDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_EXTERNAL_SOURCE_SWITCH:Ljava/lang/String; = "external_sources_settings_switch"


# instance fields
.field private mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

.field private mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 83
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 84
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 86
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    .line 87
    .local v1, "userRestrictionSource":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 95
    new-instance v2, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 96
    invoke-virtual {v2, v3, v4}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v2

    .line 98
    .local v2, "appsState":Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const v3, 0x7f12016e

    goto :goto_0

    .line 100
    :cond_0
    const v3, 0x7f12016f

    .line 98
    :goto_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 92
    .end local v2    # "appsState":Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    :pswitch_0
    const v2, 0x7f12056c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 90
    :cond_1
    :pswitch_1
    const v2, 0x7f12056e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCanInstallApps(Z)V
    .locals 8
    .param p1, "newState"    # Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x3e7

    const/4 v2, 0x2

    const/16 v3, 0x49

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 110
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 109
    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 111
    .local v0, "parellelAppUId":I
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 113
    if-eqz p1, :cond_0

    .line 111
    move v7, v4

    goto :goto_0

    .line 113
    :cond_0
    nop

    .line 111
    move v7, v2

    :goto_0
    invoke-virtual {v5, v3, v0, v6, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 116
    .end local v0    # "parellelAppUId":I
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 118
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 117
    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 119
    .local v0, "ownerAppUId":I
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_2

    .line 119
    move v6, v4

    goto :goto_1

    .line 121
    :cond_2
    nop

    .line 119
    move v6, v2

    :goto_1
    invoke-virtual {v1, v3, v0, v5, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 124
    .end local v0    # "ownerAppUId":I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_4

    .line 124
    move v2, v4

    goto :goto_2

    .line 126
    :cond_4
    nop

    .line 124
    :goto_2
    invoke-virtual {v0, v3, v1, v5, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 129
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 165
    const/16 v0, 0x328

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    .line 57
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 58
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    .line 60
    const v1, 0x7f160056

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->addPreferencesFromResource(I)V

    .line 61
    const-string v1, "external_sources_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 62
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 67
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 69
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 70
    const-class v1, Lcom/android/settings/Settings$ManageAppExternalSourcesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    nop

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setResult(I)V

    .line 74
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setCanInstallApps(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->refreshUi()Z

    .line 77
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 79
    :cond_3
    return v2
.end method

.method protected refreshUi()Z
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_install_unknown_sources"

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 136
    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v3, 0x7f12056c

    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 141
    return v2

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v3, "no_install_unknown_sources"

    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    return v2

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 149
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 152
    return v2

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 155
    return v2

    .line 134
    :cond_4
    :goto_0
    return v1
.end method
