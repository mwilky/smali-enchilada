.class public Lcom/android/settings/wifi/tether/WifiTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "WifiTetherSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final KEY_WIFI_TETHER_AUTO_OFF:Ljava/lang/String; = "wifi_tether_auto_turn_off"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "WifiTetherSettings"

.field private static final TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

.field private mConnectedDeviceManagerController:Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;

.field private mOPApBandPreferenceController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

.field private mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

.field private mRestartWifiApAfterConfigChange:Z

.field private mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

.field private mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

.field private mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

.field mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    .line 88
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    const-string v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->updateDisplayWithNewConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 59
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->startTether()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mConnectedDeviceManagerController:Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    return-object v0
.end method

.method private buildNewConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .line 198
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 199
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSecurityType()I

    move-result v1

    .line 201
    .local v1, "securityType":I
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 202
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 203
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->getPasswordValidated(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 204
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 206
    invoke-static {}, Lcom/android/settings/wifi/WifiUtils;->isSupportDualBand()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mOPApBandPreferenceController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-virtual {v2}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getBandIndex()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto :goto_0

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getBandIndex()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 212
    :goto_0
    const/4 v2, 0x1

    new-array v4, v2, [I

    const/16 v5, 0x54

    aput v5, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oneplus_is_broadcat_wifi_name"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 214
    .local v4, "isBroadcatWifiName":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 215
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_2

    .line 217
    :cond_2
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 220
    .end local v4    # "isBroadcatWifiName":Z
    :cond_3
    :goto_2
    return-object v0
.end method

.method private startTether()V
    .locals 1

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    .line 226
    return-void
.end method

.method private updateDisplayWithNewConfig()V
    .locals 1

    .line 229
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 230
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateDisplay()V

    .line 231
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 232
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    .line 233
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 234
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateDisplay()V

    .line 235
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 236
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updateDisplay()V

    .line 237
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 153
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 154
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 155
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 157
    new-instance v1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mOPApBandPreferenceController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    .line 160
    new-instance v1, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mConnectedDeviceManagerController:Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    .line 163
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mOPApBandPreferenceController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mConnectedDeviceManagerController:Lcom/android/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    const-string v2, "wifi_tether_auto_turn_off"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "WifiTetherSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 97
    const/16 v0, 0x3f6

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 146
    const v0, 0x7f1600e5

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 118
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    .line 119
    .local v1, "switchBar":Lcom/android/settings/widget/SwitchBar;
    new-instance v2, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    new-instance v3, Lcom/android/settings/widget/SwitchBarController;

    invoke-direct {v3, v1}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-direct {v2, v0, v3}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    iput-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 122
    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 123
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 108
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 109
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    .line 110
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 127
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStart()V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStop()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    :cond_0
    return-void
.end method

.method public onTetherConfigUpdated()V
    .locals 3

    .line 180
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildNewConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 181
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 189
    const-string v1, "TetheringSettings"

    const-string v2, "Wifi AP config changed while enabled, stop and restart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 192
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 195
    return-void
.end method
