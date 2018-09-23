.class public Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiP2pPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_WIFI_DIRECT:Ljava/lang/String; = "wifi_direct"


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field final mReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mWifiDirectPref:Landroid/support/v7/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mFilter:Landroid/content/IntentFilter;

    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->togglePreferences()V

    return-void
.end method

.method private togglePreferences()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "wifi_direct"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->togglePreferences()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_direct"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
