.class public Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "OPWifiTetherDeviceManagerController.java"


# static fields
.field public static final PREF_KEY:Ljava/lang/String; = "connected_device_manager"

.field private static final TAG:Ljava/lang/String; = "OPWifiTetherDeviceManagerController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    const-string v0, "connected_device_manager"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;->mContext:Landroid/content/Context;

    const-string v1, "com.oneplus.wifiapsettings"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "connected_device_manager"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const-string v0, "connected_device_manager"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;->mContext:Landroid/content/Context;

    const-string v1, "com.oneplus.wifiapsettings"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.oem.intent.action.OPWIFIAP_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateDisplay()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method
