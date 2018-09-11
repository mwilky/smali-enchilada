.class public Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "P2pThisDevicePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 53
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "p2p_this_device"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public updateDeviceName(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .param p1, "thisDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_oneplus_devicename"

    .line 70
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "mDeviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->resetDeviceNameIfInvalid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 76
    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 84
    .local v1, "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 84
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    .line 86
    .local v2, "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v1, v2, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 89
    .end local v1    # "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    .end local v2    # "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :cond_1
    return-void
.end method
