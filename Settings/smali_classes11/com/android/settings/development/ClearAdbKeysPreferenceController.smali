.class public Lcom/android/settings/development/ClearAdbKeysPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ClearAdbKeysPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final CLEAR_ADB_KEYS:Ljava/lang/String; = "clear_adb_keys"

.field static final RO_ADB_SECURE_PROPERTY_KEY:Ljava/lang/String; = "ro.adb.secure"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ClearAdbPrefCtrl"


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "clear_adb_keys"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/ClearAdbKeysWarningDialog;->show(Landroid/app/Fragment;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method isAdminUser()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->mContext:Landroid/content/Context;

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

    const-string v0, "ro.adb.secure"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onClearAdbKeysConfirmed()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ClearAdbPrefCtrl"

    const-string v2, "Unable to clear adb keys"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
