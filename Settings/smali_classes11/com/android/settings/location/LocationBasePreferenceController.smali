.class public abstract Lcom/android/settings/location/LocationBasePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LocationBasePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;


# static fields
.field protected static final EXTRA_PREF_KEY:Ljava/lang/String; = "pref_key"


# instance fields
.field protected mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

.field protected final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field protected mDpm:Landroid/app/admin/DevicePolicyManager;

.field protected final mHighPowerChangeReceiver:Landroid/content/BroadcastReceiver;

.field protected mIntentFilter:Landroid/content/IntentFilter;

.field protected final mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

.field protected mLocationManager:Landroid/location/LocationManager;

.field protected mState:Lcom/android/settingslib/applications/ApplicationsState;

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v0, Lcom/android/settings/location/LocationBasePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationBasePreferenceController$1;-><init>(Lcom/android/settings/location/LocationBasePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v0, Lcom/android/settings/location/LocationBasePreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationBasePreferenceController$2;-><init>(Lcom/android/settings/location/LocationBasePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mHighPowerChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 62
    new-instance v0, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 64
    iput-object p1, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mContext:Landroid/content/Context;

    .line 65
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 66
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 67
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationManager:Landroid/location/LocationManager;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 70
    return-void
.end method


# virtual methods
.method public checkForceStop(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V
    .locals 12
    .param p1, "mAppEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pref"    # Lcom/oneplus/settings/ui/OPButtonPreference;

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGES"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "android.intent.extra.UID"

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v1, "android.intent.extra.user_handle"

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v1, "pref_key"

    invoke-virtual {p2}, Lcom/oneplus/settings/ui/OPButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method protected forceStopPackage(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V
    .locals 6
    .param p1, "mAppEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pref"    # Lcom/oneplus/settings/ui/OPButtonPreference;

    .line 121
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 122
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 123
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 124
    .local v2, "userId":I
    const-string v3, "PrefControllerMixin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceStopPackage app userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 126
    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    .line 128
    .local v3, "newEnt":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    invoke-virtual {p0, v3, p2}, Lcom/android/settings/location/LocationBasePreferenceController;->checkForceStop(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V

    .line 129
    return-void
.end method

.method protected getCurrentUsingGpsList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    const-class v0, Landroid/location/LocationManager;

    .line 85
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/location/LocationManager;>;"
    const/4 v1, 0x0

    .line 87
    .local v1, "currentUsingGpsPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "getCurrentProviderPackageList"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 88
    .local v2, "getCurrentProviderPackageList":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationManager:Landroid/location/LocationManager;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "gps"

    aput-object v5, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 92
    .end local v2    # "getCurrentProviderPackageList":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PrefControllerMixin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentUsingGpsList Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method protected getCurrentUsingGpsListForUid()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    const-class v0, Landroid/location/LocationManager;

    .line 104
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/location/LocationManager;>;"
    const/4 v1, 0x0

    .line 106
    .local v1, "currentUsingGpsPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "getCurrentProviderPackageListsForInteger"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 107
    .local v2, "getCurrentProviderPackageList":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationManager:Landroid/location/LocationManager;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "gps"

    aput-object v5, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 111
    .end local v2    # "getCurrentProviderPackageList":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PrefControllerMixin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentUsingGpsListForUid Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 74
    const/4 v0, 0x1

    return v0
.end method
