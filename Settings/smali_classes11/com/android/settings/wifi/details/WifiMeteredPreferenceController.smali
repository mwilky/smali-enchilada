.class public Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiMeteredPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_WIFI_METERED:Ljava/lang/String; = "metered"


# instance fields
.field private mDropDownPreference:Landroid/support/v7/preference/DropDownPreference;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 58
    const-string v0, "metered"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;-><init>(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 60
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;)Landroid/support/v7/preference/DropDownPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mDropDownPreference:Landroid/support/v7/preference/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;Landroid/support/v7/preference/DropDownPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;
    .param p1, "x1"    # Landroid/support/v7/preference/DropDownPreference;
    .param p2, "x2"    # I

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/DropDownPreference;
    .param p2, "meteredOverride"    # I

    .line 143
    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mDropDownPreference:Landroid/support/v7/preference/DropDownPreference;

    .line 74
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method getMeteredOverride()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "metered"

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 128
    const-string v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 110
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    .line 111
    .local v0, "dropDownPreference":Landroid/support/v7/preference/DropDownPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result v1

    .line 112
    .local v1, "meteredOverride":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    .line 114
    return-void
.end method
