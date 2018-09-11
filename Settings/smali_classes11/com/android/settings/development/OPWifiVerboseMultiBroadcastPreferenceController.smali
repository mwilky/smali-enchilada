.class public Lcom/android/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OPWifiVerboseMultiBroadcastPreferenceController.java"


# static fields
.field private static final KEY_WIFI_VERBOSE_MULTI_BROADCAST:Ljava/lang/String; = "op_wifi_verbose_multi_broadcast"

.field private static final OP_WIFI_VERBOSE_MULTI_BROADCAST:Ljava/lang/String; = "op_enable_wifi_multi_broadcast"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "op_wifi_verbose_multi_broadcast"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 67
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "op_wifi_verbose_multi_broadcast"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 71
    return v1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_enable_wifi_multi_broadcast"

    .line 74
    move-object v2, p1

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 73
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method isAdminUser()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 80
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 85
    .local v0, "enableSwitch":Landroid/support/v14/preference/SwitchPreference;
    iget-object v1, p0, Lcom/android/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_enable_wifi_multi_broadcast"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 87
    return-void
.end method
