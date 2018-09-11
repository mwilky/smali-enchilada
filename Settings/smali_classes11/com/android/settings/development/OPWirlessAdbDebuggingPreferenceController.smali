.class public Lcom/android/settings/development/OPWirlessAdbDebuggingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OPWirlessAdbDebuggingPreferenceController.java"


# static fields
.field private static final KEY_WIRELESS_ADB_DEBUGGING:Ljava/lang/String; = "op_wireless_adb_debugging"

.field private static final OP_WIRELESS_ADB_DEBUGGING_PROPERTY:Ljava/lang/String; = "service.adb.tcp.port"

.field private static final OP_WIRELESS_ADB_DEBUGGING_PROPERTY_DISENABLE:Ljava/lang/String; = "-1"

.field private static final OP_WIRELESS_ADB_DEBUGGING_PROPERTY_ENABLE:Ljava/lang/String; = "5555"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/development/OPWirlessAdbDebuggingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/OPWirlessAdbDebuggingPreferenceController;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/development/OPWirlessAdbDebuggingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 55
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "op_wireless_adb_debugging"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 64
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "op_wireless_adb_debugging"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 68
    return v1

    .line 70
    :cond_1
    const-string v0, "service.adb.tcp.port"

    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string v1, "5555"

    goto :goto_0

    .line 72
    :cond_2
    const-string v1, "-1"

    .line 70
    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method isAdminUser()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/settings/development/OPWirlessAdbDebuggingPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 59
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.service.adb.tcp.port.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 78
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 83
    .local v0, "enableSwitch":Landroid/support/v14/preference/SwitchPreference;
    const-string v1, "service.adb.tcp.port"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "enableWirelessAdbDebuging":Ljava/lang/String;
    const-string v2, "5555"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 85
    .local v2, "enabled":Z
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 86
    return-void
.end method
